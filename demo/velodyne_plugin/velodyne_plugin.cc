#ifndef _VELODYNE_PLUGIN_HH_
#define _VELODYNE_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>

namespace gazebo
{
  /// \brief A plugin to control a Velodyne sensor.
  /// Velodyne 센서를 제어하는 플러그인 
  class VelodynePlugin : public ModelPlugin
  {
    /// \brief Constructor
    /// 생성자
    public: VelodynePlugin() {}

    /// \brief The load function is called by Gazebo when the plugin is
    /// inserted into simulation
    /// Load 함수는 plugin이 시뮬레이션 삽입 될때 Gazebo에 의해 호출 된다
    /// \param[in] _model A pointer to the model that this plugin is
    /// attached to.
    /// _model은 이 플러그인이 첨부된 모델에 대한 포인터 이다
    /// \param[in] _sdf A pointer to the plugin's SDF element.
    /// _sdf는 플러그인의 sdf 요소에 대한 포인터이다
    public: virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
    {
      // Safety check
      // joint가 없으면 return
      if (_model->GetJointCount() == 0)
      {
        std::cerr << "Invalid joint count, Velodyne plugin not loaded\n";
        return;
      }

      // Store the model pointer for convenience.
      // model 포인터를 저장한다
      this->model = _model;

      // Get the first joint. We are making an assumption about the model
      // having one joint that is the rotational joint.
      // 첫번째 joint를 가지고온다.
      // 우리는 모델이 회전 joint 1개를 가지고 있다고 가정한다
      this->joint = _model->GetJoints()[0];

      // Setup a P-controller, with a gain of 0.1.
      // PID 값을 설정한다 P gain 값을 0.1로 설정한다
      this->pid = common::PID(0.1, 0, 0);

      // Apply the P-controller to the joint.
      // joint에 P-controller를 적용한다.
      this->model->GetJointController()->SetVelocityPID(this->joint->GetScopedName(), this->pid);

      // Default to zero velocity
      // velociy값을 0으로 초기화
      double velocity = 0;

      // Check that the velocity element exists, then read the value
      // sdf 파일에 velocity 요소가 있는지 확인하고, 그 값을 읽는다.
      if (_sdf->HasElement("velocity"))velocity = _sdf->Get<double>("velocity");

      // 읽어온 값으로 velocity를 설정 한다
      this->SetVelocity(velocity);

      // Create the node
      // 노드를 생성한다
      this->node = transport::NodePtr(new transport::Node());
      #if GAZEBO_MAJOR_VERSION < 8
      // gazebo 버전이 8이상이면
      // model의 world 이름으로 노드를 초기화 한다
      this->node->Init(this->model->GetWorld()->GetName());
      #else
      this->node->Init(this->model->GetWorld()->Name());
      #endif

      // Create a topic name
      // 모델의 이름으로 topic을 생성한다
      std::string topicName = "~/" + this->model->GetName() + "/vel_cmd";

      // Subscribe to the topic, and register a callback
      // topic을 subscribe하고 callback 함수를 등록한다.
      this->sub = this->node->Subscribe(topicName, &VelodynePlugin::OnMsg, this);
    }

    /// \brief Set the velocity of the Velodyne
    /// \param[in] _vel New target velocity
    // Velodyne의 속도를 설정한다
    // _vel 파라미터는 새로운 목표 속도 값이다
    public: void SetVelocity(const double &_vel)
    {
      // Set the joint's target velocity.
      // joint의 목표 속도를 설정한다 (함수의 인자로 적용)
      this->model->GetJointController()->SetVelocityTarget(this->joint->GetScopedName(), _vel);
    }

    /// \brief Handle incoming message
    /// \param[in] _msg Repurpose a vector3 message. This function will
    /// only use the x component.
    /// 들어오는 메시지를 처리한다
    /// vector3 메시지를 목적에 맞게 만든다.
    /// 이 함수는 x 컴포넌트만 사용한다
    private: void OnMsg(ConstVector3dPtr &_msg)
    {
      this->SetVelocity(_msg->x());
    }

    /// \brief A node used for transport
    /// 이 노드는 전송을 위해 사용한다
    private: transport::NodePtr node;

    /// \brief A subscriber to a named topic.
    private: transport::SubscriberPtr sub;

    /// \brief Pointer to the model.
    private: physics::ModelPtr model;

    /// \brief Pointer to the joint.
    private: physics::JointPtr joint;

    /// \brief A PID controller for the joint.
    private: common::PID pid;
  };

  // Tell Gazebo about this plugin, so that Gazebo can call Load on this plugin.
  GZ_REGISTER_MODEL_PLUGIN(VelodynePlugin)
}
#endif
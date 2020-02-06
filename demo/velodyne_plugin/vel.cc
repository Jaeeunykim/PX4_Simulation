#include <gazebo/gazebo_config.h>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>

// Gazebo's API has changed between major releases. These changes are
// accounted for with #if..#endif blocks in this file.
// Gazebo API가 릴리즈 버전 사이에 변경되었다 
// 이 변경들은 #if..#endif 블록에 설명 되어있다
#if GAZEBO_MAJOR_VERSION < 6
#include <gazebo/gazebo.hh>
#else
#include <gazebo/gazebo_client.hh>
#endif

/////////////////////////////////////////////////
int main(int _argc, char **_argv)
{
  // Load gazebo as a client
#if GAZEBO_MAJOR_VERSION < 6
  gazebo::setupClient(_argc, _argv);
#else
  gazebo::client::setup(_argc, _argv);
#endif

  // Create our node for communication
  // 통신을 위한 노드를 생성한다
  gazebo::transport::NodePtr node(new gazebo::transport::Node());
  node->Init();

  // Publish to the  velodyne topic
  // veoldyne topic을 publish한다
  gazebo::transport::PublisherPtr pub =
    node->Advertise<gazebo::msgs::Vector3d>("~/my_velodyne/vel_cmd");

  // Wait for a subscriber to connect to this publisher
  // subscriber가 publish와 연결 될때까지 기다린다
  pub->WaitForConnection();

  // Create a a vector3 message
  // vector3 메시지를 생성한다
  gazebo::msgs::Vector3d msg;

  // Set the velocity in the x-component
  // x컴포넌트 안에 있는 속도 값을 설정한다.
#if GAZEBO_MAJOR_VERSION < 6
  gazebo::msgs::Set(&msg, gazebo::math::Vector3(std::atof(_argv[1]), 0, 0));
#else
  gazebo::msgs::Set(&msg, ignition::math::Vector3d(std::atof(_argv[1]), 0, 0));
#endif

  // Send the message
  // 메시지를 보낸다
  pub->Publish(msg);

  // Make sure to shut everything down.
  // 모두 종료한다
#if GAZEBO_MAJOR_VERSION < 6
  gazebo::shutdown();
#else
  gazebo::client::shutdown();
#endif
}
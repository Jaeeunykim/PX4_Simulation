#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>

namespace gazebo
{
  class ZeroGravityPlugin : public WorldPlugin
  {
    public: ZeroGravityPlugin() : WorldPlugin()
    {}

    public: void Load(physics::WorldPtr _world, sdf::ElementPtr _sdf)
            {
                ignition::math::Vector3d gravity(0.0, 0.0, 0.0);
                _world->SetGravity(gravity);
            }
  };
  GZ_REGISTER_WORLD_PLUGIN(ZeroGravityPlugin)
}
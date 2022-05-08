// Generated by gencpp from file cares_msgs/PlatformGoalGoal.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_PLATFORMGOALGOAL_H
#define CARES_MSGS_MESSAGE_PLATFORMGOALGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>
#include <std_msgs/String.h>

namespace cares_msgs
{
template <class ContainerAllocator>
struct PlatformGoalGoal_
{
  typedef PlatformGoalGoal_<ContainerAllocator> Type;

  PlatformGoalGoal_()
    : target_pose()
    , link_id()
    , command(0)
    , move_mode(0)  {
    }
  PlatformGoalGoal_(const ContainerAllocator& _alloc)
    : target_pose(_alloc)
    , link_id(_alloc)
    , command(0)
    , move_mode(0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;

   typedef  ::std_msgs::String_<ContainerAllocator>  _link_id_type;
  _link_id_type link_id;

   typedef uint8_t _command_type;
  _command_type command;

   typedef uint8_t _move_mode_type;
  _move_mode_type move_mode;





  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PlatformGoalGoal_

typedef ::cares_msgs::PlatformGoalGoal_<std::allocator<void> > PlatformGoalGoal;

typedef boost::shared_ptr< ::cares_msgs::PlatformGoalGoal > PlatformGoalGoalPtr;
typedef boost::shared_ptr< ::cares_msgs::PlatformGoalGoal const> PlatformGoalGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator2> & rhs)
{
  return lhs.target_pose == rhs.target_pose &&
    lhs.link_id == rhs.link_id &&
    lhs.command == rhs.command &&
    lhs.move_mode == rhs.move_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator1> & lhs, const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace cares_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ae001c0e475f20505620205aa55b4ab";
  }

  static const char* value(const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ae001c0e475f205ULL;
  static const uint64_t static_value2 = 0x05620205aa55b4abULL;
};

template<class ContainerAllocator>
struct DataType< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cares_msgs/PlatformGoalGoal";
  }

  static const char* value(const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal definition\n"
"# Desired pose - frame_id sets which world space to move in\n"
"geometry_msgs/PoseStamped target_pose\n"
"# End Effector ID to move to target_pose\n"
"std_msgs/String link_id\n"
"# Arm command\n"
"# Enumeration\n"
"# 0 Move\n"
"# 1 Stop\n"
"# 2 Reset\n"
"# 3 Actuate - e.g. prune/pick/thin\n"
"# n - 255 reserved for future use\n"
"uint8 command\n"
"#0 normal\n"
"#1 without rotation\n"
"uint8 move_mode\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PoseStamped\n"
"# A Pose with reference coordinate frame and timestamp\n"
"Header header\n"
"Pose pose\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/String\n"
"string data\n"
;
  }

  static const char* value(const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_pose);
      stream.next(m.link_id);
      stream.next(m.command);
      stream.next(m.move_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PlatformGoalGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cares_msgs::PlatformGoalGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cares_msgs::PlatformGoalGoal_<ContainerAllocator>& v)
  {
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
    s << indent << "link_id: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.link_id);
    s << indent << "command: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.command);
    s << indent << "move_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.move_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARES_MSGS_MESSAGE_PLATFORMGOALGOAL_H
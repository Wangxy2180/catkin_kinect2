// Generated by gencpp from file obj_detected/pred_draw.msg
// DO NOT EDIT!


#ifndef OBJ_DETECTED_MESSAGE_PRED_DRAW_H
#define OBJ_DETECTED_MESSAGE_PRED_DRAW_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <sensor_msgs/Image.h>
#include <obj_detected/ball_pose.h>

namespace obj_detected
{
template <class ContainerAllocator>
struct pred_draw_
{
  typedef pred_draw_<ContainerAllocator> Type;

  pred_draw_()
    : cur_color_img()
    , cur_ball_pose()  {
    }
  pred_draw_(const ContainerAllocator& _alloc)
    : cur_color_img(_alloc)
    , cur_ball_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::sensor_msgs::Image_<ContainerAllocator>  _cur_color_img_type;
  _cur_color_img_type cur_color_img;

   typedef  ::obj_detected::ball_pose_<ContainerAllocator>  _cur_ball_pose_type;
  _cur_ball_pose_type cur_ball_pose;





  typedef boost::shared_ptr< ::obj_detected::pred_draw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::obj_detected::pred_draw_<ContainerAllocator> const> ConstPtr;

}; // struct pred_draw_

typedef ::obj_detected::pred_draw_<std::allocator<void> > pred_draw;

typedef boost::shared_ptr< ::obj_detected::pred_draw > pred_drawPtr;
typedef boost::shared_ptr< ::obj_detected::pred_draw const> pred_drawConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::obj_detected::pred_draw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::obj_detected::pred_draw_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace obj_detected

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'obj_detected': ['/home/free/catkin_kinect2/src/obj_detected/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::obj_detected::pred_draw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::obj_detected::pred_draw_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obj_detected::pred_draw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::obj_detected::pred_draw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obj_detected::pred_draw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::obj_detected::pred_draw_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::obj_detected::pred_draw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6b672082de2bd40ed37d92cb6b8fa3d7";
  }

  static const char* value(const ::obj_detected::pred_draw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6b672082de2bd40eULL;
  static const uint64_t static_value2 = 0xd37d92cb6b8fa3d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::obj_detected::pred_draw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "obj_detected/pred_draw";
  }

  static const char* value(const ::obj_detected::pred_draw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::obj_detected::pred_draw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sensor_msgs/Image cur_color_img\n\
ball_pose cur_ball_pose\n\
================================================================================\n\
MSG: sensor_msgs/Image\n\
# This message contains an uncompressed image\n\
# (0, 0) is at top-left corner of image\n\
#\n\
\n\
Header header        # Header timestamp should be acquisition time of image\n\
                     # Header frame_id should be optical frame of camera\n\
                     # origin of frame should be optical center of camera\n\
                     # +x should point to the right in the image\n\
                     # +y should point down in the image\n\
                     # +z should point into to plane of the image\n\
                     # If the frame_id here and the frame_id of the CameraInfo\n\
                     # message associated with the image conflict\n\
                     # the behavior is undefined\n\
\n\
uint32 height         # image height, that is, number of rows\n\
uint32 width          # image width, that is, number of columns\n\
\n\
# The legal values for encoding are in file src/image_encodings.cpp\n\
# If you want to standardize a new string format, join\n\
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.\n\
\n\
string encoding       # Encoding of pixels -- channel meaning, ordering, size\n\
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h\n\
\n\
uint8 is_bigendian    # is this data bigendian?\n\
uint32 step           # Full row length in bytes\n\
uint8[] data          # actual matrix data, size is (step * rows)\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: obj_detected/ball_pose\n\
# 从图像输出的小球三维坐标\n\
float64 x\n\
float64 y\n\
float64 z\n\
float32 T   #周期\n\
int8 count  #第几组数据，不一定用\n\
\n\
#但是定义好之后不能直接使用，需要进行编译\n\
";
  }

  static const char* value(const ::obj_detected::pred_draw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::obj_detected::pred_draw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.cur_color_img);
      stream.next(m.cur_ball_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pred_draw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::obj_detected::pred_draw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::obj_detected::pred_draw_<ContainerAllocator>& v)
  {
    s << indent << "cur_color_img: ";
    s << std::endl;
    Printer< ::sensor_msgs::Image_<ContainerAllocator> >::stream(s, indent + "  ", v.cur_color_img);
    s << indent << "cur_ball_pose: ";
    s << std::endl;
    Printer< ::obj_detected::ball_pose_<ContainerAllocator> >::stream(s, indent + "  ", v.cur_ball_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJ_DETECTED_MESSAGE_PRED_DRAW_H
// Auto-generated. Do not edit!

// (in-package obj_detected.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ball_pose = require('./ball_pose.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class pred_draw {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cur_color_img = null;
      this.cur_ball_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('cur_color_img')) {
        this.cur_color_img = initObj.cur_color_img
      }
      else {
        this.cur_color_img = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('cur_ball_pose')) {
        this.cur_ball_pose = initObj.cur_ball_pose
      }
      else {
        this.cur_ball_pose = new ball_pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pred_draw
    // Serialize message field [cur_color_img]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.cur_color_img, buffer, bufferOffset);
    // Serialize message field [cur_ball_pose]
    bufferOffset = ball_pose.serialize(obj.cur_ball_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pred_draw
    let len;
    let data = new pred_draw(null);
    // Deserialize message field [cur_color_img]
    data.cur_color_img = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [cur_ball_pose]
    data.cur_ball_pose = ball_pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.cur_color_img);
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'obj_detected/pred_draw';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b672082de2bd40ed37d92cb6b8fa3d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image cur_color_img
    ball_pose cur_ball_pose
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: obj_detected/ball_pose
    # 从图像输出的小球三维坐标
    float64 x
    float64 y
    float64 z
    float32 T   #周期
    int8 count  #第几组数据，不一定用
    
    #但是定义好之后不能直接使用，需要进行编译
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pred_draw(null);
    if (msg.cur_color_img !== undefined) {
      resolved.cur_color_img = sensor_msgs.msg.Image.Resolve(msg.cur_color_img)
    }
    else {
      resolved.cur_color_img = new sensor_msgs.msg.Image()
    }

    if (msg.cur_ball_pose !== undefined) {
      resolved.cur_ball_pose = ball_pose.Resolve(msg.cur_ball_pose)
    }
    else {
      resolved.cur_ball_pose = new ball_pose()
    }

    return resolved;
    }
};

module.exports = pred_draw;

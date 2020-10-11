; Auto-generated. Do not edit!


(cl:in-package obj_detected-msg)


;//! \htmlinclude pred_draw.msg.html

(cl:defclass <pred_draw> (roslisp-msg-protocol:ros-message)
  ((cur_color_img
    :reader cur_color_img
    :initarg :cur_color_img
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (cur_ball_pose
    :reader cur_ball_pose
    :initarg :cur_ball_pose
    :type obj_detected-msg:ball_pose
    :initform (cl:make-instance 'obj_detected-msg:ball_pose)))
)

(cl:defclass pred_draw (<pred_draw>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pred_draw>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pred_draw)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obj_detected-msg:<pred_draw> is deprecated: use obj_detected-msg:pred_draw instead.")))

(cl:ensure-generic-function 'cur_color_img-val :lambda-list '(m))
(cl:defmethod cur_color_img-val ((m <pred_draw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:cur_color_img-val is deprecated.  Use obj_detected-msg:cur_color_img instead.")
  (cur_color_img m))

(cl:ensure-generic-function 'cur_ball_pose-val :lambda-list '(m))
(cl:defmethod cur_ball_pose-val ((m <pred_draw>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:cur_ball_pose-val is deprecated.  Use obj_detected-msg:cur_ball_pose instead.")
  (cur_ball_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pred_draw>) ostream)
  "Serializes a message object of type '<pred_draw>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_color_img) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_ball_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pred_draw>) istream)
  "Deserializes a message object of type '<pred_draw>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_color_img) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_ball_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pred_draw>)))
  "Returns string type for a message object of type '<pred_draw>"
  "obj_detected/pred_draw")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pred_draw)))
  "Returns string type for a message object of type 'pred_draw"
  "obj_detected/pred_draw")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pred_draw>)))
  "Returns md5sum for a message object of type '<pred_draw>"
  "6b672082de2bd40ed37d92cb6b8fa3d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pred_draw)))
  "Returns md5sum for a message object of type 'pred_draw"
  "6b672082de2bd40ed37d92cb6b8fa3d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pred_draw>)))
  "Returns full string definition for message of type '<pred_draw>"
  (cl:format cl:nil "sensor_msgs/Image cur_color_img~%ball_pose cur_ball_pose~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: obj_detected/ball_pose~%# 从图像输出的小球三维坐标~%float64 x~%float64 y~%float64 z~%float32 T   #周期~%int8 count  #第几组数据，不一定用~%~%#但是定义好之后不能直接使用，需要进行编译~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pred_draw)))
  "Returns full string definition for message of type 'pred_draw"
  (cl:format cl:nil "sensor_msgs/Image cur_color_img~%ball_pose cur_ball_pose~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: obj_detected/ball_pose~%# 从图像输出的小球三维坐标~%float64 x~%float64 y~%float64 z~%float32 T   #周期~%int8 count  #第几组数据，不一定用~%~%#但是定义好之后不能直接使用，需要进行编译~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pred_draw>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_color_img))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_ball_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pred_draw>))
  "Converts a ROS message object to a list"
  (cl:list 'pred_draw
    (cl:cons ':cur_color_img (cur_color_img msg))
    (cl:cons ':cur_ball_pose (cur_ball_pose msg))
))

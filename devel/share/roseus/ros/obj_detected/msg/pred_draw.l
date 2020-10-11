;; Auto-generated. Do not edit!


(when (boundp 'obj_detected::pred_draw)
  (if (not (find-package "OBJ_DETECTED"))
    (make-package "OBJ_DETECTED"))
  (shadow 'pred_draw (find-package "OBJ_DETECTED")))
(unless (find-package "OBJ_DETECTED::PRED_DRAW")
  (make-package "OBJ_DETECTED::PRED_DRAW"))

(in-package "ROS")
;;//! \htmlinclude pred_draw.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass obj_detected::pred_draw
  :super ros::object
  :slots (_cur_color_img _cur_ball_pose ))

(defmethod obj_detected::pred_draw
  (:init
   (&key
    ((:cur_color_img __cur_color_img) (instance sensor_msgs::Image :init))
    ((:cur_ball_pose __cur_ball_pose) (instance obj_detected::ball_pose :init))
    )
   (send-super :init)
   (setq _cur_color_img __cur_color_img)
   (setq _cur_ball_pose __cur_ball_pose)
   self)
  (:cur_color_img
   (&rest __cur_color_img)
   (if (keywordp (car __cur_color_img))
       (send* _cur_color_img __cur_color_img)
     (progn
       (if __cur_color_img (setq _cur_color_img (car __cur_color_img)))
       _cur_color_img)))
  (:cur_ball_pose
   (&rest __cur_ball_pose)
   (if (keywordp (car __cur_ball_pose))
       (send* _cur_ball_pose __cur_ball_pose)
     (progn
       (if __cur_ball_pose (setq _cur_ball_pose (car __cur_ball_pose)))
       _cur_ball_pose)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image _cur_color_img
    (send _cur_color_img :serialization-length)
    ;; obj_detected/ball_pose _cur_ball_pose
    (send _cur_ball_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image _cur_color_img
       (send _cur_color_img :serialize s)
     ;; obj_detected/ball_pose _cur_ball_pose
       (send _cur_ball_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image _cur_color_img
     (send _cur_color_img :deserialize buf ptr-) (incf ptr- (send _cur_color_img :serialization-length))
   ;; obj_detected/ball_pose _cur_ball_pose
     (send _cur_ball_pose :deserialize buf ptr-) (incf ptr- (send _cur_ball_pose :serialization-length))
   ;;
   self)
  )

(setf (get obj_detected::pred_draw :md5sum-) "6b672082de2bd40ed37d92cb6b8fa3d7")
(setf (get obj_detected::pred_draw :datatype-) "obj_detected/pred_draw")
(setf (get obj_detected::pred_draw :definition-)
      "sensor_msgs/Image cur_color_img
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

")



(provide :obj_detected/pred_draw "6b672082de2bd40ed37d92cb6b8fa3d7")



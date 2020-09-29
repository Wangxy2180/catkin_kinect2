; Auto-generated. Do not edit!


(cl:in-package obj_detected-msg)


;//! \htmlinclude ball_pose.msg.html

(cl:defclass <ball_pose> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (T
    :reader T
    :initarg :T
    :type cl:float
    :initform 0.0)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ball_pose (<ball_pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ball_pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ball_pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name obj_detected-msg:<ball_pose> is deprecated: use obj_detected-msg:ball_pose instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ball_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:x-val is deprecated.  Use obj_detected-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ball_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:y-val is deprecated.  Use obj_detected-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <ball_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:z-val is deprecated.  Use obj_detected-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'T-val :lambda-list '(m))
(cl:defmethod T-val ((m <ball_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:T-val is deprecated.  Use obj_detected-msg:T instead.")
  (T m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <ball_pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader obj_detected-msg:count-val is deprecated.  Use obj_detected-msg:count instead.")
  (count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ball_pose>) ostream)
  "Serializes a message object of type '<ball_pose>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'T))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ball_pose>) istream)
  "Deserializes a message object of type '<ball_pose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'T) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ball_pose>)))
  "Returns string type for a message object of type '<ball_pose>"
  "obj_detected/ball_pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ball_pose)))
  "Returns string type for a message object of type 'ball_pose"
  "obj_detected/ball_pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ball_pose>)))
  "Returns md5sum for a message object of type '<ball_pose>"
  "e48c1fb540ef95fee7f8aff4bb78fc19")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ball_pose)))
  "Returns md5sum for a message object of type 'ball_pose"
  "e48c1fb540ef95fee7f8aff4bb78fc19")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ball_pose>)))
  "Returns full string definition for message of type '<ball_pose>"
  (cl:format cl:nil "# 从图像输出的小球三维坐标~%float64 x~%float64 y~%float64 z~%float32 T   #周期~%int8 count  #第几组数据，不一定用~%~%#但是定义好之后不能直接使用，需要进行编译~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ball_pose)))
  "Returns full string definition for message of type 'ball_pose"
  (cl:format cl:nil "# 从图像输出的小球三维坐标~%float64 x~%float64 y~%float64 z~%float32 T   #周期~%int8 count  #第几组数据，不一定用~%~%#但是定义好之后不能直接使用，需要进行编译~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ball_pose>))
  (cl:+ 0
     8
     8
     8
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ball_pose>))
  "Converts a ROS message object to a list"
  (cl:list 'ball_pose
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':T (T msg))
    (cl:cons ':count (count msg))
))

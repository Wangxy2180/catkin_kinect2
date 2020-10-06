; Auto-generated. Do not edit!


(cl:in-package learning_ros_gyh21-srv)


;//! \htmlinclude Person_srv-request.msg.html

(cl:defclass <Person_srv-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (sex
    :reader sex
    :initarg :sex
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Person_srv-request (<Person_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_ros_gyh21-srv:<Person_srv-request> is deprecated: use learning_ros_gyh21-srv:Person_srv-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Person_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_ros_gyh21-srv:name-val is deprecated.  Use learning_ros_gyh21-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Person_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_ros_gyh21-srv:age-val is deprecated.  Use learning_ros_gyh21-srv:age instead.")
  (age m))

(cl:ensure-generic-function 'sex-val :lambda-list '(m))
(cl:defmethod sex-val ((m <Person_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_ros_gyh21-srv:sex-val is deprecated.  Use learning_ros_gyh21-srv:sex instead.")
  (sex m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Person_srv-request>)))
    "Constants for message type '<Person_srv-request>"
  '((:UNKNOWN . 0)
    (:MALE . 1)
    (:FEMALE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Person_srv-request)))
    "Constants for message type 'Person_srv-request"
  '((:UNKNOWN . 0)
    (:MALE . 1)
    (:FEMALE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person_srv-request>) ostream)
  "Serializes a message object of type '<Person_srv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person_srv-request>) istream)
  "Deserializes a message object of type '<Person_srv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sex)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person_srv-request>)))
  "Returns string type for a service object of type '<Person_srv-request>"
  "learning_ros_gyh21/Person_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person_srv-request)))
  "Returns string type for a service object of type 'Person_srv-request"
  "learning_ros_gyh21/Person_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person_srv-request>)))
  "Returns md5sum for a message object of type '<Person_srv-request>"
  "c198113e7dd9cc5c9fd5f271c8479b39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person_srv-request)))
  "Returns md5sum for a message object of type 'Person_srv-request"
  "c198113e7dd9cc5c9fd5f271c8479b39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person_srv-request>)))
  "Returns full string definition for message of type '<Person_srv-request>"
  (cl:format cl:nil "string name~%uint8 age~%uint8 sex~%~%uint8 unknown = 0~%uint8 male = 1~%uint8 female = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person_srv-request)))
  "Returns full string definition for message of type 'Person_srv-request"
  (cl:format cl:nil "string name~%uint8 age~%uint8 sex~%~%uint8 unknown = 0~%uint8 male = 1~%uint8 female = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person_srv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Person_srv-request
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':sex (sex msg))
))
;//! \htmlinclude Person_srv-response.msg.html

(cl:defclass <Person_srv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass Person_srv-response (<Person_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name learning_ros_gyh21-srv:<Person_srv-response> is deprecated: use learning_ros_gyh21-srv:Person_srv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Person_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader learning_ros_gyh21-srv:result-val is deprecated.  Use learning_ros_gyh21-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person_srv-response>) ostream)
  "Serializes a message object of type '<Person_srv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person_srv-response>) istream)
  "Deserializes a message object of type '<Person_srv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person_srv-response>)))
  "Returns string type for a service object of type '<Person_srv-response>"
  "learning_ros_gyh21/Person_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person_srv-response)))
  "Returns string type for a service object of type 'Person_srv-response"
  "learning_ros_gyh21/Person_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person_srv-response>)))
  "Returns md5sum for a message object of type '<Person_srv-response>"
  "c198113e7dd9cc5c9fd5f271c8479b39")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person_srv-response)))
  "Returns md5sum for a message object of type 'Person_srv-response"
  "c198113e7dd9cc5c9fd5f271c8479b39")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person_srv-response>)))
  "Returns full string definition for message of type '<Person_srv-response>"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person_srv-response)))
  "Returns full string definition for message of type 'Person_srv-response"
  (cl:format cl:nil "string result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person_srv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Person_srv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Person_srv)))
  'Person_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Person_srv)))
  'Person_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person_srv)))
  "Returns string type for a service object of type '<Person_srv>"
  "learning_ros_gyh21/Person_srv")
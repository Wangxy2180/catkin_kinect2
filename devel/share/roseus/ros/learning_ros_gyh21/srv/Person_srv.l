;; Auto-generated. Do not edit!


(when (boundp 'learning_ros_gyh21::Person_srv)
  (if (not (find-package "LEARNING_ROS_GYH21"))
    (make-package "LEARNING_ROS_GYH21"))
  (shadow 'Person_srv (find-package "LEARNING_ROS_GYH21")))
(unless (find-package "LEARNING_ROS_GYH21::PERSON_SRV")
  (make-package "LEARNING_ROS_GYH21::PERSON_SRV"))
(unless (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST")
  (make-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(unless (find-package "LEARNING_ROS_GYH21::PERSON_SRVRESPONSE")
  (make-package "LEARNING_ROS_GYH21::PERSON_SRVRESPONSE"))

(in-package "ROS")





(intern "*UNKNOWN*" (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(shadow '*UNKNOWN* (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(defconstant learning_ros_gyh21::Person_srvRequest::*UNKNOWN* 0)
(intern "*MALE*" (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(shadow '*MALE* (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(defconstant learning_ros_gyh21::Person_srvRequest::*MALE* 1)
(intern "*FEMALE*" (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(shadow '*FEMALE* (find-package "LEARNING_ROS_GYH21::PERSON_SRVREQUEST"))
(defconstant learning_ros_gyh21::Person_srvRequest::*FEMALE* 2)
(defclass learning_ros_gyh21::Person_srvRequest
  :super ros::object
  :slots (_name _age _sex ))

(defmethod learning_ros_gyh21::Person_srvRequest
  (:init
   (&key
    ((:name __name) "")
    ((:age __age) 0)
    ((:sex __sex) 0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _age (round __age))
   (setq _sex (round __sex))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:sex
   (&optional __sex)
   (if __sex (setq _sex __sex)) _sex)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint8 _age
    1
    ;; uint8 _sex
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint8 _age
       (write-byte _age s)
     ;; uint8 _sex
       (write-byte _sex s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _age
     (setq _age (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sex
     (setq _sex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass learning_ros_gyh21::Person_srvResponse
  :super ros::object
  :slots (_result ))

(defmethod learning_ros_gyh21::Person_srvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass learning_ros_gyh21::Person_srv
  :super ros::object
  :slots ())

(setf (get learning_ros_gyh21::Person_srv :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_ros_gyh21::Person_srv :datatype-) "learning_ros_gyh21/Person_srv")
(setf (get learning_ros_gyh21::Person_srv :request) learning_ros_gyh21::Person_srvRequest)
(setf (get learning_ros_gyh21::Person_srv :response) learning_ros_gyh21::Person_srvResponse)

(defmethod learning_ros_gyh21::Person_srvRequest
  (:response () (instance learning_ros_gyh21::Person_srvResponse :init)))

(setf (get learning_ros_gyh21::Person_srvRequest :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_ros_gyh21::Person_srvRequest :datatype-) "learning_ros_gyh21/Person_srvRequest")
(setf (get learning_ros_gyh21::Person_srvRequest :definition-)
      "string name
uint8 age
uint8 sex

uint8 unknown = 0
uint8 male = 1
uint8 female = 2
---
string result
")

(setf (get learning_ros_gyh21::Person_srvResponse :md5sum-) "c198113e7dd9cc5c9fd5f271c8479b39")
(setf (get learning_ros_gyh21::Person_srvResponse :datatype-) "learning_ros_gyh21/Person_srvResponse")
(setf (get learning_ros_gyh21::Person_srvResponse :definition-)
      "string name
uint8 age
uint8 sex

uint8 unknown = 0
uint8 male = 1
uint8 female = 2
---
string result
")



(provide :learning_ros_gyh21/Person_srv "c198113e7dd9cc5c9fd5f271c8479b39")



;; Auto-generated. Do not edit!


(when (boundp 'obj_detected::ball_pose)
  (if (not (find-package "OBJ_DETECTED"))
    (make-package "OBJ_DETECTED"))
  (shadow 'ball_pose (find-package "OBJ_DETECTED")))
(unless (find-package "OBJ_DETECTED::BALL_POSE")
  (make-package "OBJ_DETECTED::BALL_POSE"))

(in-package "ROS")
;;//! \htmlinclude ball_pose.msg.html


(defclass obj_detected::ball_pose
  :super ros::object
  :slots (_x _y _z _T _count ))

(defmethod obj_detected::ball_pose
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:T __T) 0.0)
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _T (float __T))
   (setq _count (round __count))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:T
   (&optional __T)
   (if __T (setq _T __T)) _T)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float32 _T
    4
    ;; int8 _count
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _T
       (sys::poke _T (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _count
       (write-byte _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _T
     (setq _T (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _count
     (setq _count (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _count 127) (setq _count (- _count 256)))
   ;;
   self)
  )

(setf (get obj_detected::ball_pose :md5sum-) "e48c1fb540ef95fee7f8aff4bb78fc19")
(setf (get obj_detected::ball_pose :datatype-) "obj_detected/ball_pose")
(setf (get obj_detected::ball_pose :definition-)
      "# 从图像输出的小球三维坐标
float64 x
float64 y
float64 z
float32 T   #周期
int8 count  #第几组数据，不一定用

#但是定义好之后不能直接使用，需要进行编译

")



(provide :obj_detected/ball_pose "e48c1fb540ef95fee7f8aff4bb78fc19")



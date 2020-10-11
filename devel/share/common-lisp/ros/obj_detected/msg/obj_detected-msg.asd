
(cl:in-package :asdf)

(defsystem "obj_detected-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ball_pose" :depends-on ("_package_ball_pose"))
    (:file "_package_ball_pose" :depends-on ("_package"))
    (:file "pred_draw" :depends-on ("_package_pred_draw"))
    (:file "_package_pred_draw" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "obj_detected-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ball_pose" :depends-on ("_package_ball_pose"))
    (:file "_package_ball_pose" :depends-on ("_package"))
  ))
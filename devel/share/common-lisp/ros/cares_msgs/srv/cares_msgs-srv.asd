
(cl:in-package :asdf)

(defsystem "cares_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cares_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "ArucoDetect" :depends-on ("_package_ArucoDetect"))
    (:file "_package_ArucoDetect" :depends-on ("_package"))
    (:file "CalibrationService" :depends-on ("_package_CalibrationService"))
    (:file "_package_CalibrationService" :depends-on ("_package"))
    (:file "Detection" :depends-on ("_package_Detection"))
    (:file "_package_Detection" :depends-on ("_package"))
  ))
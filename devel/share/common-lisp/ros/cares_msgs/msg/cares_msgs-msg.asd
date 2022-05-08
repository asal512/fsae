
(cl:in-package :asdf)

(defsystem "cares_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ArucoMarkers" :depends-on ("_package_ArucoMarkers"))
    (:file "_package_ArucoMarkers" :depends-on ("_package"))
    (:file "InstanceMasks" :depends-on ("_package_InstanceMasks"))
    (:file "_package_InstanceMasks" :depends-on ("_package"))
    (:file "PlatformGoalAction" :depends-on ("_package_PlatformGoalAction"))
    (:file "_package_PlatformGoalAction" :depends-on ("_package"))
    (:file "PlatformGoalActionFeedback" :depends-on ("_package_PlatformGoalActionFeedback"))
    (:file "_package_PlatformGoalActionFeedback" :depends-on ("_package"))
    (:file "PlatformGoalActionGoal" :depends-on ("_package_PlatformGoalActionGoal"))
    (:file "_package_PlatformGoalActionGoal" :depends-on ("_package"))
    (:file "PlatformGoalActionResult" :depends-on ("_package_PlatformGoalActionResult"))
    (:file "_package_PlatformGoalActionResult" :depends-on ("_package"))
    (:file "PlatformGoalFeedback" :depends-on ("_package_PlatformGoalFeedback"))
    (:file "_package_PlatformGoalFeedback" :depends-on ("_package"))
    (:file "PlatformGoalGoal" :depends-on ("_package_PlatformGoalGoal"))
    (:file "_package_PlatformGoalGoal" :depends-on ("_package"))
    (:file "PlatformGoalResult" :depends-on ("_package_PlatformGoalResult"))
    (:file "_package_PlatformGoalResult" :depends-on ("_package"))
    (:file "StereoCameraInfo" :depends-on ("_package_StereoCameraInfo"))
    (:file "_package_StereoCameraInfo" :depends-on ("_package"))
  ))
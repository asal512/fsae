;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::ArucoMarkers)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'ArucoMarkers (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::ARUCOMARKERS")
  (make-package "CARES_MSGS::ARUCOMARKERS"))

(in-package "ROS")
;;//! \htmlinclude ArucoMarkers.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cares_msgs::ArucoMarkers
  :super ros::object
  :slots (_header _marker_ids _marker_poses ))

(defmethod cares_msgs::ArucoMarkers
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:marker_ids __marker_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:marker_poses __marker_poses) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _marker_ids __marker_ids)
   (setq _marker_poses __marker_poses)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:marker_ids
   (&optional __marker_ids)
   (if __marker_ids (setq _marker_ids __marker_ids)) _marker_ids)
  (:marker_poses
   (&rest __marker_poses)
   (if (keywordp (car __marker_poses))
       (send* _marker_poses __marker_poses)
     (progn
       (if __marker_poses (setq _marker_poses (car __marker_poses)))
       _marker_poses)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32[] _marker_ids
    (* 4    (length _marker_ids)) 4
    ;; geometry_msgs/Pose[] _marker_poses
    (apply #'+ (send-all _marker_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32[] _marker_ids
     (write-long (length _marker_ids) s)
     (dotimes (i (length _marker_ids))
       (write-long (elt _marker_ids i) s)
       )
     ;; geometry_msgs/Pose[] _marker_poses
     (write-long (length _marker_poses) s)
     (dolist (elem _marker_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32[] _marker_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _marker_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _marker_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose[] _marker_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _marker_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _marker_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cares_msgs::ArucoMarkers :md5sum-) "6f03d453faaf4783302237f1ff76f0e3")
(setf (get cares_msgs::ArucoMarkers :datatype-) "cares_msgs/ArucoMarkers")
(setf (get cares_msgs::ArucoMarkers :definition-)
      "std_msgs/Header header
int32[] marker_ids
geometry_msgs/Pose[] marker_poses
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
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cares_msgs/ArucoMarkers "6f03d453faaf4783302237f1ff76f0e3")



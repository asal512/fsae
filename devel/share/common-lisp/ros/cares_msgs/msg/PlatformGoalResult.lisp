; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude PlatformGoalResult.msg.html

(cl:defclass <PlatformGoalResult> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PlatformGoalResult (<PlatformGoalResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlatformGoalResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlatformGoalResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<PlatformGoalResult> is deprecated: use cares_msgs-msg:PlatformGoalResult instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlatformGoalResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:status-val is deprecated.  Use cares_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlatformGoalResult>) ostream)
  "Serializes a message object of type '<PlatformGoalResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlatformGoalResult>) istream)
  "Deserializes a message object of type '<PlatformGoalResult>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlatformGoalResult>)))
  "Returns string type for a message object of type '<PlatformGoalResult>"
  "cares_msgs/PlatformGoalResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlatformGoalResult)))
  "Returns string type for a message object of type 'PlatformGoalResult"
  "cares_msgs/PlatformGoalResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlatformGoalResult>)))
  "Returns md5sum for a message object of type '<PlatformGoalResult>"
  "284aa12dd9e9e760802ac9f38036ea5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlatformGoalResult)))
  "Returns md5sum for a message object of type 'PlatformGoalResult"
  "284aa12dd9e9e760802ac9f38036ea5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlatformGoalResult>)))
  "Returns full string definition for message of type '<PlatformGoalResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlatformGoalResult)))
  "Returns full string definition for message of type 'PlatformGoalResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlatformGoalResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlatformGoalResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PlatformGoalResult
    (cl:cons ':status (status msg))
))

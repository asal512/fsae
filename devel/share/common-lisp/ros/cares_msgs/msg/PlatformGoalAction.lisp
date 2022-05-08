; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude PlatformGoalAction.msg.html

(cl:defclass <PlatformGoalAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type cares_msgs-msg:PlatformGoalActionGoal
    :initform (cl:make-instance 'cares_msgs-msg:PlatformGoalActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type cares_msgs-msg:PlatformGoalActionResult
    :initform (cl:make-instance 'cares_msgs-msg:PlatformGoalActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type cares_msgs-msg:PlatformGoalActionFeedback
    :initform (cl:make-instance 'cares_msgs-msg:PlatformGoalActionFeedback)))
)

(cl:defclass PlatformGoalAction (<PlatformGoalAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlatformGoalAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlatformGoalAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<PlatformGoalAction> is deprecated: use cares_msgs-msg:PlatformGoalAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <PlatformGoalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_goal-val is deprecated.  Use cares_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <PlatformGoalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_result-val is deprecated.  Use cares_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <PlatformGoalAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:action_feedback-val is deprecated.  Use cares_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlatformGoalAction>) ostream)
  "Serializes a message object of type '<PlatformGoalAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlatformGoalAction>) istream)
  "Deserializes a message object of type '<PlatformGoalAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlatformGoalAction>)))
  "Returns string type for a message object of type '<PlatformGoalAction>"
  "cares_msgs/PlatformGoalAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlatformGoalAction)))
  "Returns string type for a message object of type 'PlatformGoalAction"
  "cares_msgs/PlatformGoalAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlatformGoalAction>)))
  "Returns md5sum for a message object of type '<PlatformGoalAction>"
  "7e2aeba3f6ff9af5c09983ebf909cecf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlatformGoalAction)))
  "Returns md5sum for a message object of type 'PlatformGoalAction"
  "7e2aeba3f6ff9af5c09983ebf909cecf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlatformGoalAction>)))
  "Returns full string definition for message of type '<PlatformGoalAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%PlatformGoalActionGoal action_goal~%PlatformGoalActionResult action_result~%PlatformGoalActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PlatformGoalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/PlatformGoalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Desired pose - frame_id sets which world space to move in~%geometry_msgs/PoseStamped target_pose~%# End Effector ID to move to target_pose~%std_msgs/String link_id~%# Arm command~%# Enumeration~%# 0 Move~%# 1 Stop~%# 2 Reset~%# 3 Actuate - e.g. prune/pick/thin~%# n - 255 reserved for future use~%uint8 command~%#0 normal~%#1 without rotation~%uint8 move_mode~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%PlatformGoalResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/PlatformGoalResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 status~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%PlatformGoalFeedback feedback~%~%================================================================================~%MSG: cares_msgs/PlatformGoalFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlatformGoalAction)))
  "Returns full string definition for message of type 'PlatformGoalAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%PlatformGoalActionGoal action_goal~%PlatformGoalActionResult action_result~%PlatformGoalActionFeedback action_feedback~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PlatformGoalGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: cares_msgs/PlatformGoalGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%# Desired pose - frame_id sets which world space to move in~%geometry_msgs/PoseStamped target_pose~%# End Effector ID to move to target_pose~%std_msgs/String link_id~%# Arm command~%# Enumeration~%# 0 Move~%# 1 Stop~%# 2 Reset~%# 3 Actuate - e.g. prune/pick/thin~%# n - 255 reserved for future use~%uint8 command~%#0 normal~%#1 without rotation~%uint8 move_mode~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%PlatformGoalResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: cares_msgs/PlatformGoalResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%uint8 status~%~%================================================================================~%MSG: cares_msgs/PlatformGoalActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%PlatformGoalFeedback feedback~%~%================================================================================~%MSG: cares_msgs/PlatformGoalFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%uint8 status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlatformGoalAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlatformGoalAction>))
  "Converts a ROS message object to a list"
  (cl:list 'PlatformGoalAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))

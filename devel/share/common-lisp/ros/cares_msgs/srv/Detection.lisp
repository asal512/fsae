; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude Detection-request.msg.html

(cl:defclass <Detection-request> (roslisp-msg-protocol:ros-message)
  ((image_list
    :reader image_list
    :initarg :image_list
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image))))
)

(cl:defclass Detection-request (<Detection-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<Detection-request> is deprecated: use cares_msgs-srv:Detection-request instead.")))

(cl:ensure-generic-function 'image_list-val :lambda-list '(m))
(cl:defmethod image_list-val ((m <Detection-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:image_list-val is deprecated.  Use cares_msgs-srv:image_list instead.")
  (image_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-request>) ostream)
  "Serializes a message object of type '<Detection-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-request>) istream)
  "Deserializes a message object of type '<Detection-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-request>)))
  "Returns string type for a service object of type '<Detection-request>"
  "cares_msgs/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-request)))
  "Returns string type for a service object of type 'Detection-request"
  "cares_msgs/DetectionRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-request>)))
  "Returns md5sum for a message object of type '<Detection-request>"
  "5d8ead10cc464e486b8b27267419b3fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-request)))
  "Returns md5sum for a message object of type 'Detection-request"
  "5d8ead10cc464e486b8b27267419b3fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-request>)))
  "Returns full string definition for message of type '<Detection-request>"
  (cl:format cl:nil "sensor_msgs/Image[] image_list~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-request)))
  "Returns full string definition for message of type 'Detection-request"
  (cl:format cl:nil "sensor_msgs/Image[] image_list~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-request
    (cl:cons ':image_list (image_list msg))
))
;//! \htmlinclude Detection-response.msg.html

(cl:defclass <Detection-response> (roslisp-msg-protocol:ros-message)
  ((results
    :reader results
    :initarg :results
    :type (cl:vector cares_msgs-msg:InstanceMasks)
   :initform (cl:make-array 0 :element-type 'cares_msgs-msg:InstanceMasks :initial-element (cl:make-instance 'cares_msgs-msg:InstanceMasks))))
)

(cl:defclass Detection-response (<Detection-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Detection-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Detection-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<Detection-response> is deprecated: use cares_msgs-srv:Detection-response instead.")))

(cl:ensure-generic-function 'results-val :lambda-list '(m))
(cl:defmethod results-val ((m <Detection-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:results-val is deprecated.  Use cares_msgs-srv:results instead.")
  (results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Detection-response>) ostream)
  "Serializes a message object of type '<Detection-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Detection-response>) istream)
  "Deserializes a message object of type '<Detection-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cares_msgs-msg:InstanceMasks))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Detection-response>)))
  "Returns string type for a service object of type '<Detection-response>"
  "cares_msgs/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection-response)))
  "Returns string type for a service object of type 'Detection-response"
  "cares_msgs/DetectionResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Detection-response>)))
  "Returns md5sum for a message object of type '<Detection-response>"
  "5d8ead10cc464e486b8b27267419b3fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Detection-response)))
  "Returns md5sum for a message object of type 'Detection-response"
  "5d8ead10cc464e486b8b27267419b3fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Detection-response>)))
  "Returns full string definition for message of type '<Detection-response>"
  (cl:format cl:nil "cares_msgs/InstanceMasks[] results~%~%~%================================================================================~%MSG: cares_msgs/InstanceMasks~%std_msgs/Header header~%~%# ID for the associated image~%uint32 image_id~%~%# Bounding boxes in pixels~%sensor_msgs/RegionOfInterest[] boxes~%~%# Integer label IDs for each bounding box~%int32[] labels~%~%# Float probability scores of the class_id~%float32[] scores~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%sensor_msgs/Image[] masks~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%# 1: Label~%# 2: Instance~%sensor_msgs/Image aggregated_mask~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Detection-response)))
  "Returns full string definition for message of type 'Detection-response"
  (cl:format cl:nil "cares_msgs/InstanceMasks[] results~%~%~%================================================================================~%MSG: cares_msgs/InstanceMasks~%std_msgs/Header header~%~%# ID for the associated image~%uint32 image_id~%~%# Bounding boxes in pixels~%sensor_msgs/RegionOfInterest[] boxes~%~%# Integer label IDs for each bounding box~%int32[] labels~%~%# Float probability scores of the class_id~%float32[] scores~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%sensor_msgs/Image[] masks~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%# 1: Label~%# 2: Instance~%sensor_msgs/Image aggregated_mask~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Detection-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Detection-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Detection-response
    (cl:cons ':results (results msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Detection)))
  'Detection-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Detection)))
  'Detection-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Detection)))
  "Returns string type for a service object of type '<Detection>"
  "cares_msgs/Detection")
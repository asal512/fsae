; Auto-generated. Do not edit!


(cl:in-package cares_msgs-msg)


;//! \htmlinclude InstanceMasks.msg.html

(cl:defclass <InstanceMasks> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (image_id
    :reader image_id
    :initarg :image_id
    :type cl:integer
    :initform 0)
   (boxes
    :reader boxes
    :initarg :boxes
    :type (cl:vector sensor_msgs-msg:RegionOfInterest)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:RegionOfInterest :initial-element (cl:make-instance 'sensor_msgs-msg:RegionOfInterest)))
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (scores
    :reader scores
    :initarg :scores
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (masks
    :reader masks
    :initarg :masks
    :type (cl:vector sensor_msgs-msg:Image)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:Image :initial-element (cl:make-instance 'sensor_msgs-msg:Image)))
   (aggregated_mask
    :reader aggregated_mask
    :initarg :aggregated_mask
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass InstanceMasks (<InstanceMasks>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InstanceMasks>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InstanceMasks)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-msg:<InstanceMasks> is deprecated: use cares_msgs-msg:InstanceMasks instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:header-val is deprecated.  Use cares_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'image_id-val :lambda-list '(m))
(cl:defmethod image_id-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:image_id-val is deprecated.  Use cares_msgs-msg:image_id instead.")
  (image_id m))

(cl:ensure-generic-function 'boxes-val :lambda-list '(m))
(cl:defmethod boxes-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:boxes-val is deprecated.  Use cares_msgs-msg:boxes instead.")
  (boxes m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:labels-val is deprecated.  Use cares_msgs-msg:labels instead.")
  (labels m))

(cl:ensure-generic-function 'scores-val :lambda-list '(m))
(cl:defmethod scores-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:scores-val is deprecated.  Use cares_msgs-msg:scores instead.")
  (scores m))

(cl:ensure-generic-function 'masks-val :lambda-list '(m))
(cl:defmethod masks-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:masks-val is deprecated.  Use cares_msgs-msg:masks instead.")
  (masks m))

(cl:ensure-generic-function 'aggregated_mask-val :lambda-list '(m))
(cl:defmethod aggregated_mask-val ((m <InstanceMasks>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-msg:aggregated_mask-val is deprecated.  Use cares_msgs-msg:aggregated_mask instead.")
  (aggregated_mask m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InstanceMasks>) ostream)
  "Serializes a message object of type '<InstanceMasks>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'boxes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'labels))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'scores))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'scores))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masks))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'aggregated_mask) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InstanceMasks>) istream)
  "Deserializes a message object of type '<InstanceMasks>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'image_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'image_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'image_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'image_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'scores) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'scores)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:Image))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'aggregated_mask) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InstanceMasks>)))
  "Returns string type for a message object of type '<InstanceMasks>"
  "cares_msgs/InstanceMasks")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InstanceMasks)))
  "Returns string type for a message object of type 'InstanceMasks"
  "cares_msgs/InstanceMasks")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InstanceMasks>)))
  "Returns md5sum for a message object of type '<InstanceMasks>"
  "486f1de9142b0775c477557d1fb06b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InstanceMasks)))
  "Returns md5sum for a message object of type 'InstanceMasks"
  "486f1de9142b0775c477557d1fb06b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InstanceMasks>)))
  "Returns full string definition for message of type '<InstanceMasks>"
  (cl:format cl:nil "std_msgs/Header header~%~%# ID for the associated image~%uint32 image_id~%~%# Bounding boxes in pixels~%sensor_msgs/RegionOfInterest[] boxes~%~%# Integer label IDs for each bounding box~%int32[] labels~%~%# Float probability scores of the class_id~%float32[] scores~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%sensor_msgs/Image[] masks~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%# 1: Label~%# 2: Instance~%sensor_msgs/Image aggregated_mask~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InstanceMasks)))
  "Returns full string definition for message of type 'InstanceMasks"
  (cl:format cl:nil "std_msgs/Header header~%~%# ID for the associated image~%uint32 image_id~%~%# Bounding boxes in pixels~%sensor_msgs/RegionOfInterest[] boxes~%~%# Integer label IDs for each bounding box~%int32[] labels~%~%# Float probability scores of the class_id~%float32[] scores~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%sensor_msgs/Image[] masks~%~%# Instance masks as Images~%# 0: Mask [0 - 1]~%# 1: Label~%# 2: Instance~%sensor_msgs/Image aggregated_mask~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InstanceMasks>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'scores) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'aggregated_mask))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InstanceMasks>))
  "Converts a ROS message object to a list"
  (cl:list 'InstanceMasks
    (cl:cons ':header (header msg))
    (cl:cons ':image_id (image_id msg))
    (cl:cons ':boxes (boxes msg))
    (cl:cons ':labels (labels msg))
    (cl:cons ':scores (scores msg))
    (cl:cons ':masks (masks msg))
    (cl:cons ':aggregated_mask (aggregated_mask msg))
))

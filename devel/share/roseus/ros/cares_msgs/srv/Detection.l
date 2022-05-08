;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::Detection)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'Detection (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::DETECTION")
  (make-package "CARES_MSGS::DETECTION"))
(unless (find-package "CARES_MSGS::DETECTIONREQUEST")
  (make-package "CARES_MSGS::DETECTIONREQUEST"))
(unless (find-package "CARES_MSGS::DETECTIONRESPONSE")
  (make-package "CARES_MSGS::DETECTIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass cares_msgs::DetectionRequest
  :super ros::object
  :slots (_image_list ))

(defmethod cares_msgs::DetectionRequest
  (:init
   (&key
    ((:image_list __image_list) ())
    )
   (send-super :init)
   (setq _image_list __image_list)
   self)
  (:image_list
   (&rest __image_list)
   (if (keywordp (car __image_list))
       (send* _image_list __image_list)
     (progn
       (if __image_list (setq _image_list (car __image_list)))
       _image_list)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/Image[] _image_list
    (apply #'+ (send-all _image_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/Image[] _image_list
     (write-long (length _image_list) s)
     (dolist (elem _image_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/Image[] _image_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_list (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _image_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cares_msgs::DetectionResponse
  :super ros::object
  :slots (_results ))

(defmethod cares_msgs::DetectionResponse
  (:init
   (&key
    ((:results __results) ())
    )
   (send-super :init)
   (setq _results __results)
   self)
  (:results
   (&rest __results)
   (if (keywordp (car __results))
       (send* _results __results)
     (progn
       (if __results (setq _results (car __results)))
       _results)))
  (:serialization-length
   ()
   (+
    ;; cares_msgs/InstanceMasks[] _results
    (apply #'+ (send-all _results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cares_msgs/InstanceMasks[] _results
     (write-long (length _results) s)
     (dolist (elem _results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cares_msgs/InstanceMasks[] _results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _results (let (r) (dotimes (i n) (push (instance cares_msgs::InstanceMasks :init) r)) r))
     (dolist (elem- _results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cares_msgs::Detection
  :super ros::object
  :slots ())

(setf (get cares_msgs::Detection :md5sum-) "5d8ead10cc464e486b8b27267419b3fb")
(setf (get cares_msgs::Detection :datatype-) "cares_msgs/Detection")
(setf (get cares_msgs::Detection :request) cares_msgs::DetectionRequest)
(setf (get cares_msgs::Detection :response) cares_msgs::DetectionResponse)

(defmethod cares_msgs::DetectionRequest
  (:response () (instance cares_msgs::DetectionResponse :init)))

(setf (get cares_msgs::DetectionRequest :md5sum-) "5d8ead10cc464e486b8b27267419b3fb")
(setf (get cares_msgs::DetectionRequest :datatype-) "cares_msgs/DetectionRequest")
(setf (get cares_msgs::DetectionRequest :definition-)
      "sensor_msgs/Image[] image_list

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
cares_msgs/InstanceMasks[] results


================================================================================
MSG: cares_msgs/InstanceMasks
std_msgs/Header header

# ID for the associated image
uint32 image_id

# Bounding boxes in pixels
sensor_msgs/RegionOfInterest[] boxes

# Integer label IDs for each bounding box
int32[] labels

# Float probability scores of the class_id
float32[] scores

# Instance masks as Images
# 0: Mask [0 - 1]
sensor_msgs/Image[] masks

# Instance masks as Images
# 0: Mask [0 - 1]
# 1: Label
# 2: Instance
sensor_msgs/Image aggregated_mask
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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)
")

(setf (get cares_msgs::DetectionResponse :md5sum-) "5d8ead10cc464e486b8b27267419b3fb")
(setf (get cares_msgs::DetectionResponse :datatype-) "cares_msgs/DetectionResponse")
(setf (get cares_msgs::DetectionResponse :definition-)
      "sensor_msgs/Image[] image_list

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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
---
cares_msgs/InstanceMasks[] results


================================================================================
MSG: cares_msgs/InstanceMasks
std_msgs/Header header

# ID for the associated image
uint32 image_id

# Bounding boxes in pixels
sensor_msgs/RegionOfInterest[] boxes

# Integer label IDs for each bounding box
int32[] labels

# Float probability scores of the class_id
float32[] scores

# Instance masks as Images
# 0: Mask [0 - 1]
sensor_msgs/Image[] masks

# Instance masks as Images
# 0: Mask [0 - 1]
# 1: Label
# 2: Instance
sensor_msgs/Image aggregated_mask
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
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)
")



(provide :cares_msgs/Detection "5d8ead10cc464e486b8b27267419b3fb")



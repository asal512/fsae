;; Auto-generated. Do not edit!


(when (boundp 'cares_msgs::InstanceMasks)
  (if (not (find-package "CARES_MSGS"))
    (make-package "CARES_MSGS"))
  (shadow 'InstanceMasks (find-package "CARES_MSGS")))
(unless (find-package "CARES_MSGS::INSTANCEMASKS")
  (make-package "CARES_MSGS::INSTANCEMASKS"))

(in-package "ROS")
;;//! \htmlinclude InstanceMasks.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cares_msgs::InstanceMasks
  :super ros::object
  :slots (_header _image_id _boxes _labels _scores _masks _aggregated_mask ))

(defmethod cares_msgs::InstanceMasks
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:image_id __image_id) 0)
    ((:boxes __boxes) ())
    ((:labels __labels) (make-array 0 :initial-element 0 :element-type :integer))
    ((:scores __scores) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:masks __masks) ())
    ((:aggregated_mask __aggregated_mask) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _image_id (round __image_id))
   (setq _boxes __boxes)
   (setq _labels __labels)
   (setq _scores __scores)
   (setq _masks __masks)
   (setq _aggregated_mask __aggregated_mask)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:image_id
   (&optional __image_id)
   (if __image_id (setq _image_id __image_id)) _image_id)
  (:boxes
   (&rest __boxes)
   (if (keywordp (car __boxes))
       (send* _boxes __boxes)
     (progn
       (if __boxes (setq _boxes (car __boxes)))
       _boxes)))
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:scores
   (&optional __scores)
   (if __scores (setq _scores __scores)) _scores)
  (:masks
   (&rest __masks)
   (if (keywordp (car __masks))
       (send* _masks __masks)
     (progn
       (if __masks (setq _masks (car __masks)))
       _masks)))
  (:aggregated_mask
   (&rest __aggregated_mask)
   (if (keywordp (car __aggregated_mask))
       (send* _aggregated_mask __aggregated_mask)
     (progn
       (if __aggregated_mask (setq _aggregated_mask (car __aggregated_mask)))
       _aggregated_mask)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _image_id
    4
    ;; sensor_msgs/RegionOfInterest[] _boxes
    (apply #'+ (send-all _boxes :serialization-length)) 4
    ;; int32[] _labels
    (* 4    (length _labels)) 4
    ;; float32[] _scores
    (* 4    (length _scores)) 4
    ;; sensor_msgs/Image[] _masks
    (apply #'+ (send-all _masks :serialization-length)) 4
    ;; sensor_msgs/Image _aggregated_mask
    (send _aggregated_mask :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _image_id
       (write-long _image_id s)
     ;; sensor_msgs/RegionOfInterest[] _boxes
     (write-long (length _boxes) s)
     (dolist (elem _boxes)
       (send elem :serialize s)
       )
     ;; int32[] _labels
     (write-long (length _labels) s)
     (dotimes (i (length _labels))
       (write-long (elt _labels i) s)
       )
     ;; float32[] _scores
     (write-long (length _scores) s)
     (dotimes (i (length _scores))
       (sys::poke (elt _scores i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; sensor_msgs/Image[] _masks
     (write-long (length _masks) s)
     (dolist (elem _masks)
       (send elem :serialize s)
       )
     ;; sensor_msgs/Image _aggregated_mask
       (send _aggregated_mask :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _image_id
     (setq _image_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest[] _boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _boxes (let (r) (dotimes (i n) (push (instance sensor_msgs::RegionOfInterest :init) r)) r))
     (dolist (elem- _boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _labels i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float32[] _scores
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scores (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _scores i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; sensor_msgs/Image[] _masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _masks (let (r) (dotimes (i n) (push (instance sensor_msgs::Image :init) r)) r))
     (dolist (elem- _masks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; sensor_msgs/Image _aggregated_mask
     (send _aggregated_mask :deserialize buf ptr-) (incf ptr- (send _aggregated_mask :serialization-length))
   ;;
   self)
  )

(setf (get cares_msgs::InstanceMasks :md5sum-) "486f1de9142b0775c477557d1fb06b6f")
(setf (get cares_msgs::InstanceMasks :datatype-) "cares_msgs/InstanceMasks")
(setf (get cares_msgs::InstanceMasks :definition-)
      "std_msgs/Header header

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



(provide :cares_msgs/InstanceMasks "486f1de9142b0775c477557d1fb06b6f")



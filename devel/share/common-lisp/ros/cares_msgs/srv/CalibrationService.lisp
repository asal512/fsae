; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude CalibrationService-request.msg.html

(cl:defclass <CalibrationService-request> (roslisp-msg-protocol:ros-message)
  ((image_directory
    :reader image_directory
    :initarg :image_directory
    :type cl:string
    :initform ""))
)

(cl:defclass CalibrationService-request (<CalibrationService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<CalibrationService-request> is deprecated: use cares_msgs-srv:CalibrationService-request instead.")))

(cl:ensure-generic-function 'image_directory-val :lambda-list '(m))
(cl:defmethod image_directory-val ((m <CalibrationService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:image_directory-val is deprecated.  Use cares_msgs-srv:image_directory instead.")
  (image_directory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationService-request>) ostream)
  "Serializes a message object of type '<CalibrationService-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_directory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_directory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationService-request>) istream)
  "Deserializes a message object of type '<CalibrationService-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_directory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_directory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationService-request>)))
  "Returns string type for a service object of type '<CalibrationService-request>"
  "cares_msgs/CalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationService-request)))
  "Returns string type for a service object of type 'CalibrationService-request"
  "cares_msgs/CalibrationServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationService-request>)))
  "Returns md5sum for a message object of type '<CalibrationService-request>"
  "8284c144be4aef7666b0ba742b26c291")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationService-request)))
  "Returns md5sum for a message object of type 'CalibrationService-request"
  "8284c144be4aef7666b0ba742b26c291")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationService-request>)))
  "Returns full string definition for message of type '<CalibrationService-request>"
  (cl:format cl:nil "string image_directory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationService-request)))
  "Returns full string definition for message of type 'CalibrationService-request"
  (cl:format cl:nil "string image_directory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationService-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_directory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationService-request
    (cl:cons ':image_directory (image_directory msg))
))
;//! \htmlinclude CalibrationService-response.msg.html

(cl:defclass <CalibrationService-response> (roslisp-msg-protocol:ros-message)
  ((stereo_info
    :reader stereo_info
    :initarg :stereo_info
    :type cares_msgs-msg:StereoCameraInfo
    :initform (cl:make-instance 'cares_msgs-msg:StereoCameraInfo)))
)

(cl:defclass CalibrationService-response (<CalibrationService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<CalibrationService-response> is deprecated: use cares_msgs-srv:CalibrationService-response instead.")))

(cl:ensure-generic-function 'stereo_info-val :lambda-list '(m))
(cl:defmethod stereo_info-val ((m <CalibrationService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:stereo_info-val is deprecated.  Use cares_msgs-srv:stereo_info instead.")
  (stereo_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationService-response>) ostream)
  "Serializes a message object of type '<CalibrationService-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stereo_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationService-response>) istream)
  "Deserializes a message object of type '<CalibrationService-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stereo_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationService-response>)))
  "Returns string type for a service object of type '<CalibrationService-response>"
  "cares_msgs/CalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationService-response)))
  "Returns string type for a service object of type 'CalibrationService-response"
  "cares_msgs/CalibrationServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationService-response>)))
  "Returns md5sum for a message object of type '<CalibrationService-response>"
  "8284c144be4aef7666b0ba742b26c291")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationService-response)))
  "Returns md5sum for a message object of type 'CalibrationService-response"
  "8284c144be4aef7666b0ba742b26c291")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationService-response>)))
  "Returns full string definition for message of type '<CalibrationService-response>"
  (cl:format cl:nil "cares_msgs/StereoCameraInfo stereo_info~%~%~%~%================================================================================~%MSG: cares_msgs/StereoCameraInfo~%Header header~%~%# Camera information for the left camera~%sensor_msgs/CameraInfo left_info~%~%# Camera information for the right camera~%sensor_msgs/CameraInfo right_info~%~%# Disparity-to-depth mapping matrix in 4x4 row-major format. Use this~%# matrix together with the  Reconstruct3D class from libvisiontransfer~%# to transform a disparity map to 3D points.~%float64[16] Q~%~%# Translation vector between the coordinate systems of the left and~%# right camera.~%float64[3] T_left_right~%~%# Rotation matrix between the coordinate systems of the left and right~%# camera in 3x3 row-major format.~%float64[9] R_left_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationService-response)))
  "Returns full string definition for message of type 'CalibrationService-response"
  (cl:format cl:nil "cares_msgs/StereoCameraInfo stereo_info~%~%~%~%================================================================================~%MSG: cares_msgs/StereoCameraInfo~%Header header~%~%# Camera information for the left camera~%sensor_msgs/CameraInfo left_info~%~%# Camera information for the right camera~%sensor_msgs/CameraInfo right_info~%~%# Disparity-to-depth mapping matrix in 4x4 row-major format. Use this~%# matrix together with the  Reconstruct3D class from libvisiontransfer~%# to transform a disparity map to 3D points.~%float64[16] Q~%~%# Translation vector between the coordinate systems of the left and~%# right camera.~%float64[3] T_left_right~%~%# Rotation matrix between the coordinate systems of the left and right~%# camera in 3x3 row-major format.~%float64[9] R_left_right~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationService-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stereo_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationService-response
    (cl:cons ':stereo_info (stereo_info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CalibrationService)))
  'CalibrationService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CalibrationService)))
  'CalibrationService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationService)))
  "Returns string type for a service object of type '<CalibrationService>"
  "cares_msgs/CalibrationService")
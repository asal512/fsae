; Auto-generated. Do not edit!


(cl:in-package cares_msgs-srv)


;//! \htmlinclude ArucoDetect-request.msg.html

(cl:defclass <ArucoDetect-request> (roslisp-msg-protocol:ros-message)
  ((left_image
    :reader left_image
    :initarg :left_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (right_image
    :reader right_image
    :initarg :right_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (stereo_info
    :reader stereo_info
    :initarg :stereo_info
    :type cares_msgs-msg:StereoCameraInfo
    :initform (cl:make-instance 'cares_msgs-msg:StereoCameraInfo))
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (depth_image
    :reader depth_image
    :initarg :depth_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (camera_info
    :reader camera_info
    :initarg :camera_info
    :type sensor_msgs-msg:CameraInfo
    :initform (cl:make-instance 'sensor_msgs-msg:CameraInfo)))
)

(cl:defclass ArucoDetect-request (<ArucoDetect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArucoDetect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArucoDetect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ArucoDetect-request> is deprecated: use cares_msgs-srv:ArucoDetect-request instead.")))

(cl:ensure-generic-function 'left_image-val :lambda-list '(m))
(cl:defmethod left_image-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:left_image-val is deprecated.  Use cares_msgs-srv:left_image instead.")
  (left_image m))

(cl:ensure-generic-function 'right_image-val :lambda-list '(m))
(cl:defmethod right_image-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:right_image-val is deprecated.  Use cares_msgs-srv:right_image instead.")
  (right_image m))

(cl:ensure-generic-function 'stereo_info-val :lambda-list '(m))
(cl:defmethod stereo_info-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:stereo_info-val is deprecated.  Use cares_msgs-srv:stereo_info instead.")
  (stereo_info m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:image-val is deprecated.  Use cares_msgs-srv:image instead.")
  (image m))

(cl:ensure-generic-function 'depth_image-val :lambda-list '(m))
(cl:defmethod depth_image-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:depth_image-val is deprecated.  Use cares_msgs-srv:depth_image instead.")
  (depth_image m))

(cl:ensure-generic-function 'camera_info-val :lambda-list '(m))
(cl:defmethod camera_info-val ((m <ArucoDetect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:camera_info-val is deprecated.  Use cares_msgs-srv:camera_info instead.")
  (camera_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArucoDetect-request>) ostream)
  "Serializes a message object of type '<ArucoDetect-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stereo_info) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'depth_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArucoDetect-request>) istream)
  "Deserializes a message object of type '<ArucoDetect-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stereo_info) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'depth_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArucoDetect-request>)))
  "Returns string type for a service object of type '<ArucoDetect-request>"
  "cares_msgs/ArucoDetectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArucoDetect-request)))
  "Returns string type for a service object of type 'ArucoDetect-request"
  "cares_msgs/ArucoDetectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArucoDetect-request>)))
  "Returns md5sum for a message object of type '<ArucoDetect-request>"
  "46b24f939212136602a01afc5ea1221e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArucoDetect-request)))
  "Returns md5sum for a message object of type 'ArucoDetect-request"
  "46b24f939212136602a01afc5ea1221e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArucoDetect-request>)))
  "Returns full string definition for message of type '<ArucoDetect-request>"
  (cl:format cl:nil "sensor_msgs/Image left_image~%sensor_msgs/Image right_image~%cares_msgs/StereoCameraInfo stereo_info~%~%sensor_msgs/Image image~%sensor_msgs/Image depth_image~%sensor_msgs/CameraInfo camera_info~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cares_msgs/StereoCameraInfo~%Header header~%~%# Camera information for the left camera~%sensor_msgs/CameraInfo left_info~%~%# Camera information for the right camera~%sensor_msgs/CameraInfo right_info~%~%# Disparity-to-depth mapping matrix in 4x4 row-major format. Use this~%# matrix together with the  Reconstruct3D class from libvisiontransfer~%# to transform a disparity map to 3D points.~%float64[16] Q~%~%# Translation vector between the coordinate systems of the left and~%# right camera.~%float64[3] T_left_right~%~%# Rotation matrix between the coordinate systems of the left and right~%# camera in 3x3 row-major format.~%float64[9] R_left_right~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArucoDetect-request)))
  "Returns full string definition for message of type 'ArucoDetect-request"
  (cl:format cl:nil "sensor_msgs/Image left_image~%sensor_msgs/Image right_image~%cares_msgs/StereoCameraInfo stereo_info~%~%sensor_msgs/Image image~%sensor_msgs/Image depth_image~%sensor_msgs/CameraInfo camera_info~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cares_msgs/StereoCameraInfo~%Header header~%~%# Camera information for the left camera~%sensor_msgs/CameraInfo left_info~%~%# Camera information for the right camera~%sensor_msgs/CameraInfo right_info~%~%# Disparity-to-depth mapping matrix in 4x4 row-major format. Use this~%# matrix together with the  Reconstruct3D class from libvisiontransfer~%# to transform a disparity map to 3D points.~%float64[16] Q~%~%# Translation vector between the coordinate systems of the left and~%# right camera.~%float64[3] T_left_right~%~%# Rotation matrix between the coordinate systems of the left and right~%# camera in 3x3 row-major format.~%float64[9] R_left_right~%~%================================================================================~%MSG: sensor_msgs/CameraInfo~%# This message defines meta information for a camera. It should be in a~%# camera namespace on topic \"camera_info\" and accompanied by up to five~%# image topics named:~%#~%#   image_raw - raw data from the camera driver, possibly Bayer encoded~%#   image            - monochrome, distorted~%#   image_color      - color, distorted~%#   image_rect       - monochrome, rectified~%#   image_rect_color - color, rectified~%#~%# The image_pipeline contains packages (image_proc, stereo_image_proc)~%# for producing the four processed image topics from image_raw and~%# camera_info. The meaning of the camera parameters are described in~%# detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.~%#~%# The image_geometry package provides a user-friendly interface to~%# common operations using this meta information. If you want to, e.g.,~%# project a 3d point into image coordinates, we strongly recommend~%# using image_geometry.~%#~%# If the camera is uncalibrated, the matrices D, K, R, P should be left~%# zeroed out. In particular, clients may assume that K[0] == 0.0~%# indicates an uncalibrated camera.~%~%#######################################################################~%#                     Image acquisition info                          #~%#######################################################################~%~%# Time of image acquisition, camera coordinate frame ID~%Header header    # Header timestamp should be acquisition time of image~%                 # Header frame_id should be optical frame of camera~%                 # origin of frame should be optical center of camera~%                 # +x should point to the right in the image~%                 # +y should point down in the image~%                 # +z should point into the plane of the image~%~%~%#######################################################################~%#                      Calibration Parameters                         #~%#######################################################################~%# These are fixed during camera calibration. Their values will be the #~%# same in all messages until the camera is recalibrated. Note that    #~%# self-calibrating systems may \"recalibrate\" frequently.              #~%#                                                                     #~%# The internal parameters can be used to warp a raw (distorted) image #~%# to:                                                                 #~%#   1. An undistorted image (requires D and K)                        #~%#   2. A rectified image (requires D, K, R)                           #~%# The projection matrix P projects 3D points into the rectified image.#~%#######################################################################~%~%# The image dimensions with which the camera was calibrated. Normally~%# this will be the full camera resolution in pixels.~%uint32 height~%uint32 width~%~%# The distortion model used. Supported models are listed in~%# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a~%# simple model of radial and tangential distortion - is sufficient.~%string distortion_model~%~%# The distortion parameters, size depending on the distortion model.~%# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).~%float64[] D~%~%# Intrinsic camera matrix for the raw (distorted) images.~%#     [fx  0 cx]~%# K = [ 0 fy cy]~%#     [ 0  0  1]~%# Projects 3D points in the camera coordinate frame to 2D pixel~%# coordinates using the focal lengths (fx, fy) and principal point~%# (cx, cy).~%float64[9]  K # 3x3 row-major matrix~%~%# Rectification matrix (stereo cameras only)~%# A rotation matrix aligning the camera coordinate system to the ideal~%# stereo image plane so that epipolar lines in both stereo images are~%# parallel.~%float64[9]  R # 3x3 row-major matrix~%~%# Projection/camera matrix~%#     [fx'  0  cx' Tx]~%# P = [ 0  fy' cy' Ty]~%#     [ 0   0   1   0]~%# By convention, this matrix specifies the intrinsic (camera) matrix~%#  of the processed (rectified) image. That is, the left 3x3 portion~%#  is the normal camera intrinsic matrix for the rectified image.~%# It projects 3D points in the camera coordinate frame to 2D pixel~%#  coordinates using the focal lengths (fx', fy') and principal point~%#  (cx', cy') - these may differ from the values in K.~%# For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will~%#  also have R = the identity and P[1:3,1:3] = K.~%# For a stereo pair, the fourth column [Tx Ty 0]' is related to the~%#  position of the optical center of the second camera in the first~%#  camera's frame. We assume Tz = 0 so both cameras are in the same~%#  stereo image plane. The first camera always has Tx = Ty = 0. For~%#  the right (second) camera of a horizontal stereo pair, Ty = 0 and~%#  Tx = -fx' * B, where B is the baseline between the cameras.~%# Given a 3D point [X Y Z]', the projection (x, y) of the point onto~%#  the rectified image is given by:~%#  [u v w]' = P * [X Y Z 1]'~%#         x = u / w~%#         y = v / w~%#  This holds for both images of a stereo pair.~%float64[12] P # 3x4 row-major matrix~%~%~%#######################################################################~%#                      Operational Parameters                         #~%#######################################################################~%# These define the image region actually captured by the camera       #~%# driver. Although they affect the geometry of the output image, they #~%# may be changed freely without recalibrating the camera.             #~%#######################################################################~%~%# Binning refers here to any camera setting which combines rectangular~%#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the~%#  resolution of the output image to~%#  (width / binning_x) x (height / binning_y).~%# The default values binning_x = binning_y = 0 is considered the same~%#  as binning_x = binning_y = 1 (no subsampling).~%uint32 binning_x~%uint32 binning_y~%~%# Region of interest (subwindow of full camera resolution), given in~%#  full resolution (unbinned) image coordinates. A particular ROI~%#  always denotes the same window of pixels on the camera sensor,~%#  regardless of binning settings.~%# The default setting of roi (all values 0) is considered the same as~%#  full resolution (roi.width = width, roi.height = height).~%RegionOfInterest roi~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArucoDetect-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stereo_info))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'depth_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArucoDetect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ArucoDetect-request
    (cl:cons ':left_image (left_image msg))
    (cl:cons ':right_image (right_image msg))
    (cl:cons ':stereo_info (stereo_info msg))
    (cl:cons ':image (image msg))
    (cl:cons ':depth_image (depth_image msg))
    (cl:cons ':camera_info (camera_info msg))
))
;//! \htmlinclude ArucoDetect-response.msg.html

(cl:defclass <ArucoDetect-response> (roslisp-msg-protocol:ros-message)
  ((ids
    :reader ids
    :initarg :ids
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (transforms
    :reader transforms
    :initarg :transforms
    :type (cl:vector geometry_msgs-msg:TransformStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:TransformStamped :initial-element (cl:make-instance 'geometry_msgs-msg:TransformStamped))))
)

(cl:defclass ArucoDetect-response (<ArucoDetect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ArucoDetect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ArucoDetect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cares_msgs-srv:<ArucoDetect-response> is deprecated: use cares_msgs-srv:ArucoDetect-response instead.")))

(cl:ensure-generic-function 'ids-val :lambda-list '(m))
(cl:defmethod ids-val ((m <ArucoDetect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:ids-val is deprecated.  Use cares_msgs-srv:ids instead.")
  (ids m))

(cl:ensure-generic-function 'transforms-val :lambda-list '(m))
(cl:defmethod transforms-val ((m <ArucoDetect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cares_msgs-srv:transforms-val is deprecated.  Use cares_msgs-srv:transforms instead.")
  (transforms m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ArucoDetect-response>) ostream)
  "Serializes a message object of type '<ArucoDetect-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ids))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'ids))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'transforms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'transforms))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ArucoDetect-response>) istream)
  "Deserializes a message object of type '<ArucoDetect-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ids)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'transforms) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'transforms)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:TransformStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ArucoDetect-response>)))
  "Returns string type for a service object of type '<ArucoDetect-response>"
  "cares_msgs/ArucoDetectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArucoDetect-response)))
  "Returns string type for a service object of type 'ArucoDetect-response"
  "cares_msgs/ArucoDetectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ArucoDetect-response>)))
  "Returns md5sum for a message object of type '<ArucoDetect-response>"
  "46b24f939212136602a01afc5ea1221e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ArucoDetect-response)))
  "Returns md5sum for a message object of type 'ArucoDetect-response"
  "46b24f939212136602a01afc5ea1221e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ArucoDetect-response>)))
  "Returns full string definition for message of type '<ArucoDetect-response>"
  (cl:format cl:nil "uint8[] ids~%geometry_msgs/TransformStamped[] transforms~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ArucoDetect-response)))
  "Returns full string definition for message of type 'ArucoDetect-response"
  (cl:format cl:nil "uint8[] ids~%geometry_msgs/TransformStamped[] transforms~%~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://wiki.ros.org/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ArucoDetect-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'transforms) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ArucoDetect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ArucoDetect-response
    (cl:cons ':ids (ids msg))
    (cl:cons ':transforms (transforms msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ArucoDetect)))
  'ArucoDetect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ArucoDetect)))
  'ArucoDetect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ArucoDetect)))
  "Returns string type for a service object of type '<ArucoDetect>"
  "cares_msgs/ArucoDetect")
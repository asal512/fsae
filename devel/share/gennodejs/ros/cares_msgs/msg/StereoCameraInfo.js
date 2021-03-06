// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StereoCameraInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.left_info = null;
      this.right_info = null;
      this.Q = null;
      this.T_left_right = null;
      this.R_left_right = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('left_info')) {
        this.left_info = initObj.left_info
      }
      else {
        this.left_info = new sensor_msgs.msg.CameraInfo();
      }
      if (initObj.hasOwnProperty('right_info')) {
        this.right_info = initObj.right_info
      }
      else {
        this.right_info = new sensor_msgs.msg.CameraInfo();
      }
      if (initObj.hasOwnProperty('Q')) {
        this.Q = initObj.Q
      }
      else {
        this.Q = new Array(16).fill(0);
      }
      if (initObj.hasOwnProperty('T_left_right')) {
        this.T_left_right = initObj.T_left_right
      }
      else {
        this.T_left_right = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('R_left_right')) {
        this.R_left_right = initObj.R_left_right
      }
      else {
        this.R_left_right = new Array(9).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StereoCameraInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [left_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.left_info, buffer, bufferOffset);
    // Serialize message field [right_info]
    bufferOffset = sensor_msgs.msg.CameraInfo.serialize(obj.right_info, buffer, bufferOffset);
    // Check that the constant length array field [Q] has the right length
    if (obj.Q.length !== 16) {
      throw new Error('Unable to serialize array field Q - length must be 16')
    }
    // Serialize message field [Q]
    bufferOffset = _arraySerializer.float64(obj.Q, buffer, bufferOffset, 16);
    // Check that the constant length array field [T_left_right] has the right length
    if (obj.T_left_right.length !== 3) {
      throw new Error('Unable to serialize array field T_left_right - length must be 3')
    }
    // Serialize message field [T_left_right]
    bufferOffset = _arraySerializer.float64(obj.T_left_right, buffer, bufferOffset, 3);
    // Check that the constant length array field [R_left_right] has the right length
    if (obj.R_left_right.length !== 9) {
      throw new Error('Unable to serialize array field R_left_right - length must be 9')
    }
    // Serialize message field [R_left_right]
    bufferOffset = _arraySerializer.float64(obj.R_left_right, buffer, bufferOffset, 9);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StereoCameraInfo
    let len;
    let data = new StereoCameraInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_info]
    data.left_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_info]
    data.right_info = sensor_msgs.msg.CameraInfo.deserialize(buffer, bufferOffset);
    // Deserialize message field [Q]
    data.Q = _arrayDeserializer.float64(buffer, bufferOffset, 16)
    // Deserialize message field [T_left_right]
    data.T_left_right = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [R_left_right]
    data.R_left_right = _arrayDeserializer.float64(buffer, bufferOffset, 9)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.left_info);
    length += sensor_msgs.msg.CameraInfo.getMessageSize(object.right_info);
    return length + 224;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/StereoCameraInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eca3b527e5502c28c9f17e8c40cf1d1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Camera information for the left camera
    sensor_msgs/CameraInfo left_info
    
    # Camera information for the right camera
    sensor_msgs/CameraInfo right_info
    
    # Disparity-to-depth mapping matrix in 4x4 row-major format. Use this
    # matrix together with the  Reconstruct3D class from libvisiontransfer
    # to transform a disparity map to 3D points.
    float64[16] Q
    
    # Translation vector between the coordinate systems of the left and
    # right camera.
    float64[3] T_left_right
    
    # Rotation matrix between the coordinate systems of the left and right
    # camera in 3x3 row-major format.
    float64[9] R_left_right
    
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
    MSG: sensor_msgs/CameraInfo
    # This message defines meta information for a camera. It should be in a
    # camera namespace on topic "camera_info" and accompanied by up to five
    # image topics named:
    #
    #   image_raw - raw data from the camera driver, possibly Bayer encoded
    #   image            - monochrome, distorted
    #   image_color      - color, distorted
    #   image_rect       - monochrome, rectified
    #   image_rect_color - color, rectified
    #
    # The image_pipeline contains packages (image_proc, stereo_image_proc)
    # for producing the four processed image topics from image_raw and
    # camera_info. The meaning of the camera parameters are described in
    # detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
    #
    # The image_geometry package provides a user-friendly interface to
    # common operations using this meta information. If you want to, e.g.,
    # project a 3d point into image coordinates, we strongly recommend
    # using image_geometry.
    #
    # If the camera is uncalibrated, the matrices D, K, R, P should be left
    # zeroed out. In particular, clients may assume that K[0] == 0.0
    # indicates an uncalibrated camera.
    
    #######################################################################
    #                     Image acquisition info                          #
    #######################################################################
    
    # Time of image acquisition, camera coordinate frame ID
    Header header    # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into the plane of the image
    
    
    #######################################################################
    #                      Calibration Parameters                         #
    #######################################################################
    # These are fixed during camera calibration. Their values will be the #
    # same in all messages until the camera is recalibrated. Note that    #
    # self-calibrating systems may "recalibrate" frequently.              #
    #                                                                     #
    # The internal parameters can be used to warp a raw (distorted) image #
    # to:                                                                 #
    #   1. An undistorted image (requires D and K)                        #
    #   2. A rectified image (requires D, K, R)                           #
    # The projection matrix P projects 3D points into the rectified image.#
    #######################################################################
    
    # The image dimensions with which the camera was calibrated. Normally
    # this will be the full camera resolution in pixels.
    uint32 height
    uint32 width
    
    # The distortion model used. Supported models are listed in
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
    float64[] D
    
    # Intrinsic camera matrix for the raw (distorted) images.
    #     [fx  0 cx]
    # K = [ 0 fy cy]
    #     [ 0  0  1]
    # Projects 3D points in the camera coordinate frame to 2D pixel
    # coordinates using the focal lengths (fx, fy) and principal point
    # (cx, cy).
    float64[9]  K # 3x3 row-major matrix
    
    # Rectification matrix (stereo cameras only)
    # A rotation matrix aligning the camera coordinate system to the ideal
    # stereo image plane so that epipolar lines in both stereo images are
    # parallel.
    float64[9]  R # 3x3 row-major matrix
    
    # Projection/camera matrix
    #     [fx'  0  cx' Tx]
    # P = [ 0  fy' cy' Ty]
    #     [ 0   0   1   0]
    # By convention, this matrix specifies the intrinsic (camera) matrix
    #  of the processed (rectified) image. That is, the left 3x3 portion
    #  is the normal camera intrinsic matrix for the rectified image.
    # It projects 3D points in the camera coordinate frame to 2D pixel
    #  coordinates using the focal lengths (fx', fy') and principal point
    #  (cx', cy') - these may differ from the values in K.
    # For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
    #  also have R = the identity and P[1:3,1:3] = K.
    # For a stereo pair, the fourth column [Tx Ty 0]' is related to the
    #  position of the optical center of the second camera in the first
    #  camera's frame. We assume Tz = 0 so both cameras are in the same
    #  stereo image plane. The first camera always has Tx = Ty = 0. For
    #  the right (second) camera of a horizontal stereo pair, Ty = 0 and
    #  Tx = -fx' * B, where B is the baseline between the cameras.
    # Given a 3D point [X Y Z]', the projection (x, y) of the point onto
    #  the rectified image is given by:
    #  [u v w]' = P * [X Y Z 1]'
    #         x = u / w
    #         y = v / w
    #  This holds for both images of a stereo pair.
    float64[12] P # 3x4 row-major matrix
    
    
    #######################################################################
    #                      Operational Parameters                         #
    #######################################################################
    # These define the image region actually captured by the camera       #
    # driver. Although they affect the geometry of the output image, they #
    # may be changed freely without recalibrating the camera.             #
    #######################################################################
    
    # Binning refers here to any camera setting which combines rectangular
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
    #  resolution of the output image to
    #  (width / binning_x) x (height / binning_y).
    # The default values binning_x = binning_y = 0 is considered the same
    #  as binning_x = binning_y = 1 (no subsampling).
    uint32 binning_x
    uint32 binning_y
    
    # Region of interest (subwindow of full camera resolution), given in
    #  full resolution (unbinned) image coordinates. A particular ROI
    #  always denotes the same window of pixels on the camera sensor,
    #  regardless of binning settings.
    # The default setting of roi (all values 0) is considered the same as
    #  full resolution (roi.width = width, roi.height = height).
    RegionOfInterest roi
    
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StereoCameraInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.left_info !== undefined) {
      resolved.left_info = sensor_msgs.msg.CameraInfo.Resolve(msg.left_info)
    }
    else {
      resolved.left_info = new sensor_msgs.msg.CameraInfo()
    }

    if (msg.right_info !== undefined) {
      resolved.right_info = sensor_msgs.msg.CameraInfo.Resolve(msg.right_info)
    }
    else {
      resolved.right_info = new sensor_msgs.msg.CameraInfo()
    }

    if (msg.Q !== undefined) {
      resolved.Q = msg.Q;
    }
    else {
      resolved.Q = new Array(16).fill(0)
    }

    if (msg.T_left_right !== undefined) {
      resolved.T_left_right = msg.T_left_right;
    }
    else {
      resolved.T_left_right = new Array(3).fill(0)
    }

    if (msg.R_left_right !== undefined) {
      resolved.R_left_right = msg.R_left_right;
    }
    else {
      resolved.R_left_right = new Array(9).fill(0)
    }

    return resolved;
    }
};

module.exports = StereoCameraInfo;

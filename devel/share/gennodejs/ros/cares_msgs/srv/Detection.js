// Auto-generated. Do not edit!

// (in-package cares_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let InstanceMasks = require('../msg/InstanceMasks.js');

//-----------------------------------------------------------

class DetectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_list = null;
    }
    else {
      if (initObj.hasOwnProperty('image_list')) {
        this.image_list = initObj.image_list
      }
      else {
        this.image_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionRequest
    // Serialize message field [image_list]
    // Serialize the length for message field [image_list]
    bufferOffset = _serializer.uint32(obj.image_list.length, buffer, bufferOffset);
    obj.image_list.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionRequest
    let len;
    let data = new DetectionRequest(null);
    // Deserialize message field [image_list]
    // Deserialize array length for message field [image_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.image_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.image_list[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.image_list.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/DetectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93ecc01c6ff7e51537063c3fdd5f998c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/Image[] image_list
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionRequest(null);
    if (msg.image_list !== undefined) {
      resolved.image_list = new Array(msg.image_list.length);
      for (let i = 0; i < resolved.image_list.length; ++i) {
        resolved.image_list[i] = sensor_msgs.msg.Image.Resolve(msg.image_list[i]);
      }
    }
    else {
      resolved.image_list = []
    }

    return resolved;
    }
};

class DetectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.results = null;
    }
    else {
      if (initObj.hasOwnProperty('results')) {
        this.results = initObj.results
      }
      else {
        this.results = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectionResponse
    // Serialize message field [results]
    // Serialize the length for message field [results]
    bufferOffset = _serializer.uint32(obj.results.length, buffer, bufferOffset);
    obj.results.forEach((val) => {
      bufferOffset = InstanceMasks.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectionResponse
    let len;
    let data = new DetectionResponse(null);
    // Deserialize message field [results]
    // Deserialize array length for message field [results]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.results = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.results[i] = InstanceMasks.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.results.forEach((val) => {
      length += InstanceMasks.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/DetectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd35ecd7cde940f12bbae788dd93dab2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectionResponse(null);
    if (msg.results !== undefined) {
      resolved.results = new Array(msg.results.length);
      for (let i = 0; i < resolved.results.length; ++i) {
        resolved.results[i] = InstanceMasks.Resolve(msg.results[i]);
      }
    }
    else {
      resolved.results = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectionRequest,
  Response: DetectionResponse,
  md5sum() { return '5d8ead10cc464e486b8b27267419b3fb'; },
  datatype() { return 'cares_msgs/Detection'; }
};

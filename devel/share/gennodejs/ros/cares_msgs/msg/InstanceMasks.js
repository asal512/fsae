// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class InstanceMasks {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.image_id = null;
      this.boxes = null;
      this.labels = null;
      this.scores = null;
      this.masks = null;
      this.aggregated_mask = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('image_id')) {
        this.image_id = initObj.image_id
      }
      else {
        this.image_id = 0;
      }
      if (initObj.hasOwnProperty('boxes')) {
        this.boxes = initObj.boxes
      }
      else {
        this.boxes = [];
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
      if (initObj.hasOwnProperty('scores')) {
        this.scores = initObj.scores
      }
      else {
        this.scores = [];
      }
      if (initObj.hasOwnProperty('masks')) {
        this.masks = initObj.masks
      }
      else {
        this.masks = [];
      }
      if (initObj.hasOwnProperty('aggregated_mask')) {
        this.aggregated_mask = initObj.aggregated_mask
      }
      else {
        this.aggregated_mask = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InstanceMasks
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [image_id]
    bufferOffset = _serializer.uint32(obj.image_id, buffer, bufferOffset);
    // Serialize message field [boxes]
    // Serialize the length for message field [boxes]
    bufferOffset = _serializer.uint32(obj.boxes.length, buffer, bufferOffset);
    obj.boxes.forEach((val) => {
      bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.int32(obj.labels, buffer, bufferOffset, null);
    // Serialize message field [scores]
    bufferOffset = _arraySerializer.float32(obj.scores, buffer, bufferOffset, null);
    // Serialize message field [masks]
    // Serialize the length for message field [masks]
    bufferOffset = _serializer.uint32(obj.masks.length, buffer, bufferOffset);
    obj.masks.forEach((val) => {
      bufferOffset = sensor_msgs.msg.Image.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [aggregated_mask]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.aggregated_mask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InstanceMasks
    let len;
    let data = new InstanceMasks(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_id]
    data.image_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [boxes]
    // Deserialize array length for message field [boxes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.boxes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.boxes[i] = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [scores]
    data.scores = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [masks]
    // Deserialize array length for message field [masks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.masks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.masks[i] = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [aggregated_mask]
    data.aggregated_mask = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 17 * object.boxes.length;
    length += 4 * object.labels.length;
    length += 4 * object.scores.length;
    object.masks.forEach((val) => {
      length += sensor_msgs.msg.Image.getMessageSize(val);
    });
    length += sensor_msgs.msg.Image.getMessageSize(object.aggregated_mask);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/InstanceMasks';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '486f1de9142b0775c477557d1fb06b6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new InstanceMasks(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.image_id !== undefined) {
      resolved.image_id = msg.image_id;
    }
    else {
      resolved.image_id = 0
    }

    if (msg.boxes !== undefined) {
      resolved.boxes = new Array(msg.boxes.length);
      for (let i = 0; i < resolved.boxes.length; ++i) {
        resolved.boxes[i] = sensor_msgs.msg.RegionOfInterest.Resolve(msg.boxes[i]);
      }
    }
    else {
      resolved.boxes = []
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    if (msg.scores !== undefined) {
      resolved.scores = msg.scores;
    }
    else {
      resolved.scores = []
    }

    if (msg.masks !== undefined) {
      resolved.masks = new Array(msg.masks.length);
      for (let i = 0; i < resolved.masks.length; ++i) {
        resolved.masks[i] = sensor_msgs.msg.Image.Resolve(msg.masks[i]);
      }
    }
    else {
      resolved.masks = []
    }

    if (msg.aggregated_mask !== undefined) {
      resolved.aggregated_mask = sensor_msgs.msg.Image.Resolve(msg.aggregated_mask)
    }
    else {
      resolved.aggregated_mask = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = InstanceMasks;

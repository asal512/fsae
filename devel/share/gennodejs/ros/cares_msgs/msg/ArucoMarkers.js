// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArucoMarkers {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.marker_ids = null;
      this.marker_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('marker_ids')) {
        this.marker_ids = initObj.marker_ids
      }
      else {
        this.marker_ids = [];
      }
      if (initObj.hasOwnProperty('marker_poses')) {
        this.marker_poses = initObj.marker_poses
      }
      else {
        this.marker_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArucoMarkers
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [marker_ids]
    bufferOffset = _arraySerializer.int32(obj.marker_ids, buffer, bufferOffset, null);
    // Serialize message field [marker_poses]
    // Serialize the length for message field [marker_poses]
    bufferOffset = _serializer.uint32(obj.marker_poses.length, buffer, bufferOffset);
    obj.marker_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArucoMarkers
    let len;
    let data = new ArucoMarkers(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [marker_ids]
    data.marker_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [marker_poses]
    // Deserialize array length for message field [marker_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.marker_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.marker_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.marker_ids.length;
    length += 56 * object.marker_poses.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/ArucoMarkers';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f03d453faaf4783302237f1ff76f0e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    int32[] marker_ids
    geometry_msgs/Pose[] marker_poses
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArucoMarkers(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.marker_ids !== undefined) {
      resolved.marker_ids = msg.marker_ids;
    }
    else {
      resolved.marker_ids = []
    }

    if (msg.marker_poses !== undefined) {
      resolved.marker_poses = new Array(msg.marker_poses.length);
      for (let i = 0; i < resolved.marker_poses.length; ++i) {
        resolved.marker_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.marker_poses[i]);
      }
    }
    else {
      resolved.marker_poses = []
    }

    return resolved;
    }
};

module.exports = ArucoMarkers;

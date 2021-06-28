// Auto-generated. Do not edit!

// (in-package ndt_map.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NDTCellMsg = require('./NDTCellMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class NDTMapMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.x_size = null;
      this.y_size = null;
      this.z_size = null;
      this.x_cen = null;
      this.y_cen = null;
      this.z_cen = null;
      this.x_cell_size = null;
      this.y_cell_size = null;
      this.z_cell_size = null;
      this.cells = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('x_size')) {
        this.x_size = initObj.x_size
      }
      else {
        this.x_size = 0.0;
      }
      if (initObj.hasOwnProperty('y_size')) {
        this.y_size = initObj.y_size
      }
      else {
        this.y_size = 0.0;
      }
      if (initObj.hasOwnProperty('z_size')) {
        this.z_size = initObj.z_size
      }
      else {
        this.z_size = 0.0;
      }
      if (initObj.hasOwnProperty('x_cen')) {
        this.x_cen = initObj.x_cen
      }
      else {
        this.x_cen = 0.0;
      }
      if (initObj.hasOwnProperty('y_cen')) {
        this.y_cen = initObj.y_cen
      }
      else {
        this.y_cen = 0.0;
      }
      if (initObj.hasOwnProperty('z_cen')) {
        this.z_cen = initObj.z_cen
      }
      else {
        this.z_cen = 0.0;
      }
      if (initObj.hasOwnProperty('x_cell_size')) {
        this.x_cell_size = initObj.x_cell_size
      }
      else {
        this.x_cell_size = 0.0;
      }
      if (initObj.hasOwnProperty('y_cell_size')) {
        this.y_cell_size = initObj.y_cell_size
      }
      else {
        this.y_cell_size = 0.0;
      }
      if (initObj.hasOwnProperty('z_cell_size')) {
        this.z_cell_size = initObj.z_cell_size
      }
      else {
        this.z_cell_size = 0.0;
      }
      if (initObj.hasOwnProperty('cells')) {
        this.cells = initObj.cells
      }
      else {
        this.cells = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NDTMapMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [x_size]
    bufferOffset = _serializer.float64(obj.x_size, buffer, bufferOffset);
    // Serialize message field [y_size]
    bufferOffset = _serializer.float64(obj.y_size, buffer, bufferOffset);
    // Serialize message field [z_size]
    bufferOffset = _serializer.float64(obj.z_size, buffer, bufferOffset);
    // Serialize message field [x_cen]
    bufferOffset = _serializer.float64(obj.x_cen, buffer, bufferOffset);
    // Serialize message field [y_cen]
    bufferOffset = _serializer.float64(obj.y_cen, buffer, bufferOffset);
    // Serialize message field [z_cen]
    bufferOffset = _serializer.float64(obj.z_cen, buffer, bufferOffset);
    // Serialize message field [x_cell_size]
    bufferOffset = _serializer.float64(obj.x_cell_size, buffer, bufferOffset);
    // Serialize message field [y_cell_size]
    bufferOffset = _serializer.float64(obj.y_cell_size, buffer, bufferOffset);
    // Serialize message field [z_cell_size]
    bufferOffset = _serializer.float64(obj.z_cell_size, buffer, bufferOffset);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    bufferOffset = _serializer.uint32(obj.cells.length, buffer, bufferOffset);
    obj.cells.forEach((val) => {
      bufferOffset = NDTCellMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NDTMapMsg
    let len;
    let data = new NDTMapMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [x_size]
    data.x_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_size]
    data.y_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_size]
    data.z_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_cen]
    data.x_cen = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_cen]
    data.y_cen = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_cen]
    data.z_cen = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_cell_size]
    data.x_cell_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y_cell_size]
    data.y_cell_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z_cell_size]
    data.z_cell_size = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cells]
    // Deserialize array length for message field [cells]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cells = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cells[i] = NDTCellMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.cells.forEach((val) => {
      length += NDTCellMsg.getMessageSize(val);
    });
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ndt_map/NDTMapMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6aa3635c67f9abc249181bdf6529236b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #In this file we define map message that will be published
    Header header          #standard header information
    float64 x_size         #in meters
    float64 y_size         #in meters
    float64 z_size         #in meters
    float64 x_cen          #cneter of the map
    float64 y_cen          #cneter of the map
    float64 z_cen          #cneter of the map
    float64 x_cell_size    #cell size
    float64 y_cell_size    #cell size
    float64 z_cell_size    #cell size
    
    NDTCellMsg[] cells     #cells
    
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
    MSG: ndt_map/NDTCellMsg
    #In this file we define a sinngle ndt cell message
    float64 mean_x       #x coordinate of mean
    float64 mean_y       #y coordinate of mean
    float64 mean_z       #z coordinate of mean
    float64[] cov_matrix #covariance matrix
    float64 occupancy    #occupancy
    int64 N              #point count
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NDTMapMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.x_size !== undefined) {
      resolved.x_size = msg.x_size;
    }
    else {
      resolved.x_size = 0.0
    }

    if (msg.y_size !== undefined) {
      resolved.y_size = msg.y_size;
    }
    else {
      resolved.y_size = 0.0
    }

    if (msg.z_size !== undefined) {
      resolved.z_size = msg.z_size;
    }
    else {
      resolved.z_size = 0.0
    }

    if (msg.x_cen !== undefined) {
      resolved.x_cen = msg.x_cen;
    }
    else {
      resolved.x_cen = 0.0
    }

    if (msg.y_cen !== undefined) {
      resolved.y_cen = msg.y_cen;
    }
    else {
      resolved.y_cen = 0.0
    }

    if (msg.z_cen !== undefined) {
      resolved.z_cen = msg.z_cen;
    }
    else {
      resolved.z_cen = 0.0
    }

    if (msg.x_cell_size !== undefined) {
      resolved.x_cell_size = msg.x_cell_size;
    }
    else {
      resolved.x_cell_size = 0.0
    }

    if (msg.y_cell_size !== undefined) {
      resolved.y_cell_size = msg.y_cell_size;
    }
    else {
      resolved.y_cell_size = 0.0
    }

    if (msg.z_cell_size !== undefined) {
      resolved.z_cell_size = msg.z_cell_size;
    }
    else {
      resolved.z_cell_size = 0.0
    }

    if (msg.cells !== undefined) {
      resolved.cells = new Array(msg.cells.length);
      for (let i = 0; i < resolved.cells.length; ++i) {
        resolved.cells[i] = NDTCellMsg.Resolve(msg.cells[i]);
      }
    }
    else {
      resolved.cells = []
    }

    return resolved;
    }
};

module.exports = NDTMapMsg;

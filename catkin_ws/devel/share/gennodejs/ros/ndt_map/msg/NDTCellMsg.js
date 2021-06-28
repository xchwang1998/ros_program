// Auto-generated. Do not edit!

// (in-package ndt_map.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NDTCellMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mean_x = null;
      this.mean_y = null;
      this.mean_z = null;
      this.cov_matrix = null;
      this.occupancy = null;
      this.N = null;
    }
    else {
      if (initObj.hasOwnProperty('mean_x')) {
        this.mean_x = initObj.mean_x
      }
      else {
        this.mean_x = 0.0;
      }
      if (initObj.hasOwnProperty('mean_y')) {
        this.mean_y = initObj.mean_y
      }
      else {
        this.mean_y = 0.0;
      }
      if (initObj.hasOwnProperty('mean_z')) {
        this.mean_z = initObj.mean_z
      }
      else {
        this.mean_z = 0.0;
      }
      if (initObj.hasOwnProperty('cov_matrix')) {
        this.cov_matrix = initObj.cov_matrix
      }
      else {
        this.cov_matrix = [];
      }
      if (initObj.hasOwnProperty('occupancy')) {
        this.occupancy = initObj.occupancy
      }
      else {
        this.occupancy = 0.0;
      }
      if (initObj.hasOwnProperty('N')) {
        this.N = initObj.N
      }
      else {
        this.N = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NDTCellMsg
    // Serialize message field [mean_x]
    bufferOffset = _serializer.float64(obj.mean_x, buffer, bufferOffset);
    // Serialize message field [mean_y]
    bufferOffset = _serializer.float64(obj.mean_y, buffer, bufferOffset);
    // Serialize message field [mean_z]
    bufferOffset = _serializer.float64(obj.mean_z, buffer, bufferOffset);
    // Serialize message field [cov_matrix]
    bufferOffset = _arraySerializer.float64(obj.cov_matrix, buffer, bufferOffset, null);
    // Serialize message field [occupancy]
    bufferOffset = _serializer.float64(obj.occupancy, buffer, bufferOffset);
    // Serialize message field [N]
    bufferOffset = _serializer.int64(obj.N, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NDTCellMsg
    let len;
    let data = new NDTCellMsg(null);
    // Deserialize message field [mean_x]
    data.mean_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mean_y]
    data.mean_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mean_z]
    data.mean_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cov_matrix]
    data.cov_matrix = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [occupancy]
    data.occupancy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [N]
    data.N = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.cov_matrix.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ndt_map/NDTCellMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5de462e5aea799b2fcf5b028c0840eb6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new NDTCellMsg(null);
    if (msg.mean_x !== undefined) {
      resolved.mean_x = msg.mean_x;
    }
    else {
      resolved.mean_x = 0.0
    }

    if (msg.mean_y !== undefined) {
      resolved.mean_y = msg.mean_y;
    }
    else {
      resolved.mean_y = 0.0
    }

    if (msg.mean_z !== undefined) {
      resolved.mean_z = msg.mean_z;
    }
    else {
      resolved.mean_z = 0.0
    }

    if (msg.cov_matrix !== undefined) {
      resolved.cov_matrix = msg.cov_matrix;
    }
    else {
      resolved.cov_matrix = []
    }

    if (msg.occupancy !== undefined) {
      resolved.occupancy = msg.occupancy;
    }
    else {
      resolved.occupancy = 0.0
    }

    if (msg.N !== undefined) {
      resolved.N = msg.N;
    }
    else {
      resolved.N = 0
    }

    return resolved;
    }
};

module.exports = NDTCellMsg;

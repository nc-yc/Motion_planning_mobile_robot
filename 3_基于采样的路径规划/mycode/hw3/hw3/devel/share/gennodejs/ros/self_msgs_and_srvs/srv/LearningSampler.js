// Auto-generated. Do not edit!

// (in-package self_msgs_and_srvs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let input_point = require('../msg/input_point.js');

//-----------------------------------------------------------

let output_point = require('../msg/output_point.js');

//-----------------------------------------------------------

class LearningSamplerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input_traj = null;
    }
    else {
      if (initObj.hasOwnProperty('input_traj')) {
        this.input_traj = initObj.input_traj
      }
      else {
        this.input_traj = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LearningSamplerRequest
    // Serialize message field [input_traj]
    // Serialize the length for message field [input_traj]
    bufferOffset = _serializer.uint32(obj.input_traj.length, buffer, bufferOffset);
    obj.input_traj.forEach((val) => {
      bufferOffset = input_point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LearningSamplerRequest
    let len;
    let data = new LearningSamplerRequest(null);
    // Deserialize message field [input_traj]
    // Deserialize array length for message field [input_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.input_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.input_traj[i] = input_point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 144 * object.input_traj.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'self_msgs_and_srvs/LearningSamplerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a49c03162e276d7c7c5587d167db2b8e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    self_msgs_and_srvs/input_point[] input_traj
    
    ================================================================================
    MSG: self_msgs_and_srvs/input_point
    geometry_msgs/Point cur_pos
    geometry_msgs/Point pred_pos
    geometry_msgs/Point succ_pos
    
    geometry_msgs/Point target_pos
    geometry_msgs/Point target_vel
    geometry_msgs/Point target_acc
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LearningSamplerRequest(null);
    if (msg.input_traj !== undefined) {
      resolved.input_traj = new Array(msg.input_traj.length);
      for (let i = 0; i < resolved.input_traj.length; ++i) {
        resolved.input_traj[i] = input_point.Resolve(msg.input_traj[i]);
      }
    }
    else {
      resolved.input_traj = []
    }

    return resolved;
    }
};

class LearningSamplerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_traj = null;
    }
    else {
      if (initObj.hasOwnProperty('output_traj')) {
        this.output_traj = initObj.output_traj
      }
      else {
        this.output_traj = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LearningSamplerResponse
    // Serialize message field [output_traj]
    // Serialize the length for message field [output_traj]
    bufferOffset = _serializer.uint32(obj.output_traj.length, buffer, bufferOffset);
    obj.output_traj.forEach((val) => {
      bufferOffset = output_point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LearningSamplerResponse
    let len;
    let data = new LearningSamplerResponse(null);
    // Deserialize message field [output_traj]
    // Deserialize array length for message field [output_traj]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.output_traj = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.output_traj[i] = output_point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 144 * object.output_traj.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'self_msgs_and_srvs/LearningSamplerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '875d2f319e4959b3d97b0dd27254317e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    self_msgs_and_srvs/output_point[] output_traj
    
    
    ================================================================================
    MSG: self_msgs_and_srvs/output_point
    geometry_msgs/Point pos_mu
    geometry_msgs/Point pos_var
    
    geometry_msgs/Point vel_mu 
    geometry_msgs/Point vel_var
    
    # geometry_msgs/Point theta_mu 
    # geometry_msgs/Point theta_var
    
    geometry_msgs/Point acc_mu
    geometry_msgs/Point acc_var
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LearningSamplerResponse(null);
    if (msg.output_traj !== undefined) {
      resolved.output_traj = new Array(msg.output_traj.length);
      for (let i = 0; i < resolved.output_traj.length; ++i) {
        resolved.output_traj[i] = output_point.Resolve(msg.output_traj[i]);
      }
    }
    else {
      resolved.output_traj = []
    }

    return resolved;
    }
};

module.exports = {
  Request: LearningSamplerRequest,
  Response: LearningSamplerResponse,
  md5sum() { return '9b3be973a2fd70300d20649e1a983955'; },
  datatype() { return 'self_msgs_and_srvs/LearningSampler'; }
};

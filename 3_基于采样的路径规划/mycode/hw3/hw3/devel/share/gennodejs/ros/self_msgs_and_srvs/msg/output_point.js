// Auto-generated. Do not edit!

// (in-package self_msgs_and_srvs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class output_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_mu = null;
      this.pos_var = null;
      this.vel_mu = null;
      this.vel_var = null;
      this.acc_mu = null;
      this.acc_var = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_mu')) {
        this.pos_mu = initObj.pos_mu
      }
      else {
        this.pos_mu = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pos_var')) {
        this.pos_var = initObj.pos_var
      }
      else {
        this.pos_var = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('vel_mu')) {
        this.vel_mu = initObj.vel_mu
      }
      else {
        this.vel_mu = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('vel_var')) {
        this.vel_var = initObj.vel_var
      }
      else {
        this.vel_var = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('acc_mu')) {
        this.acc_mu = initObj.acc_mu
      }
      else {
        this.acc_mu = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('acc_var')) {
        this.acc_var = initObj.acc_var
      }
      else {
        this.acc_var = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type output_point
    // Serialize message field [pos_mu]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos_mu, buffer, bufferOffset);
    // Serialize message field [pos_var]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos_var, buffer, bufferOffset);
    // Serialize message field [vel_mu]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.vel_mu, buffer, bufferOffset);
    // Serialize message field [vel_var]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.vel_var, buffer, bufferOffset);
    // Serialize message field [acc_mu]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.acc_mu, buffer, bufferOffset);
    // Serialize message field [acc_var]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.acc_var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type output_point
    let len;
    let data = new output_point(null);
    // Deserialize message field [pos_mu]
    data.pos_mu = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pos_var]
    data.pos_var = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_mu]
    data.vel_mu = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [vel_var]
    data.vel_var = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_mu]
    data.acc_mu = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [acc_var]
    data.acc_var = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'self_msgs_and_srvs/output_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cbc628d4028ac02bd3f45d03121084c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new output_point(null);
    if (msg.pos_mu !== undefined) {
      resolved.pos_mu = geometry_msgs.msg.Point.Resolve(msg.pos_mu)
    }
    else {
      resolved.pos_mu = new geometry_msgs.msg.Point()
    }

    if (msg.pos_var !== undefined) {
      resolved.pos_var = geometry_msgs.msg.Point.Resolve(msg.pos_var)
    }
    else {
      resolved.pos_var = new geometry_msgs.msg.Point()
    }

    if (msg.vel_mu !== undefined) {
      resolved.vel_mu = geometry_msgs.msg.Point.Resolve(msg.vel_mu)
    }
    else {
      resolved.vel_mu = new geometry_msgs.msg.Point()
    }

    if (msg.vel_var !== undefined) {
      resolved.vel_var = geometry_msgs.msg.Point.Resolve(msg.vel_var)
    }
    else {
      resolved.vel_var = new geometry_msgs.msg.Point()
    }

    if (msg.acc_mu !== undefined) {
      resolved.acc_mu = geometry_msgs.msg.Point.Resolve(msg.acc_mu)
    }
    else {
      resolved.acc_mu = new geometry_msgs.msg.Point()
    }

    if (msg.acc_var !== undefined) {
      resolved.acc_var = geometry_msgs.msg.Point.Resolve(msg.acc_var)
    }
    else {
      resolved.acc_var = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = output_point;

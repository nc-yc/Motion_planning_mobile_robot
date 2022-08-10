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

class input_point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cur_pos = null;
      this.pred_pos = null;
      this.succ_pos = null;
      this.target_pos = null;
      this.target_vel = null;
      this.target_acc = null;
    }
    else {
      if (initObj.hasOwnProperty('cur_pos')) {
        this.cur_pos = initObj.cur_pos
      }
      else {
        this.cur_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('pred_pos')) {
        this.pred_pos = initObj.pred_pos
      }
      else {
        this.pred_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('succ_pos')) {
        this.succ_pos = initObj.succ_pos
      }
      else {
        this.succ_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('target_vel')) {
        this.target_vel = initObj.target_vel
      }
      else {
        this.target_vel = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('target_acc')) {
        this.target_acc = initObj.target_acc
      }
      else {
        this.target_acc = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type input_point
    // Serialize message field [cur_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cur_pos, buffer, bufferOffset);
    // Serialize message field [pred_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pred_pos, buffer, bufferOffset);
    // Serialize message field [succ_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.succ_pos, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target_pos, buffer, bufferOffset);
    // Serialize message field [target_vel]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target_vel, buffer, bufferOffset);
    // Serialize message field [target_acc]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.target_acc, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type input_point
    let len;
    let data = new input_point(null);
    // Deserialize message field [cur_pos]
    data.cur_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [pred_pos]
    data.pred_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [succ_pos]
    data.succ_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_vel]
    data.target_vel = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_acc]
    data.target_acc = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 144;
  }

  static datatype() {
    // Returns string type for a message object
    return 'self_msgs_and_srvs/input_point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4b446b61e7be949357360ca65dc198b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new input_point(null);
    if (msg.cur_pos !== undefined) {
      resolved.cur_pos = geometry_msgs.msg.Point.Resolve(msg.cur_pos)
    }
    else {
      resolved.cur_pos = new geometry_msgs.msg.Point()
    }

    if (msg.pred_pos !== undefined) {
      resolved.pred_pos = geometry_msgs.msg.Point.Resolve(msg.pred_pos)
    }
    else {
      resolved.pred_pos = new geometry_msgs.msg.Point()
    }

    if (msg.succ_pos !== undefined) {
      resolved.succ_pos = geometry_msgs.msg.Point.Resolve(msg.succ_pos)
    }
    else {
      resolved.succ_pos = new geometry_msgs.msg.Point()
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = geometry_msgs.msg.Point.Resolve(msg.target_pos)
    }
    else {
      resolved.target_pos = new geometry_msgs.msg.Point()
    }

    if (msg.target_vel !== undefined) {
      resolved.target_vel = geometry_msgs.msg.Point.Resolve(msg.target_vel)
    }
    else {
      resolved.target_vel = new geometry_msgs.msg.Point()
    }

    if (msg.target_acc !== undefined) {
      resolved.target_acc = geometry_msgs.msg.Point.Resolve(msg.target_acc)
    }
    else {
      resolved.target_acc = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = input_point;

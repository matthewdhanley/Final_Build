// Auto-generated. Do not edit!

// (in-package robot_actions.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class move_baseResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.location = null;
    }
    else {
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type move_baseResult
    // Serialize message field [location]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type move_baseResult
    let len;
    let data = new move_baseResult(null);
    // Deserialize message field [location]
    data.location = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robot_actions/move_baseResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68ff00ebc14ac99f5a5137e25226d94e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #result def
    geometry_msgs/Point location
    
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
    const resolved = new move_baseResult(null);
    if (msg.location !== undefined) {
      resolved.location = geometry_msgs.msg.Point.Resolve(msg.location)
    }
    else {
      resolved.location = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = move_baseResult;

// Auto-generated. Do not edit!

// (in-package image_transport_tutorial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class ResizedImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.original_height = null;
      this.original_width = null;
      this.image = null;
    }
    else {
      if (initObj.hasOwnProperty('original_height')) {
        this.original_height = initObj.original_height
      }
      else {
        this.original_height = 0;
      }
      if (initObj.hasOwnProperty('original_width')) {
        this.original_width = initObj.original_width
      }
      else {
        this.original_width = 0;
      }
      if (initObj.hasOwnProperty('image')) {
        this.image = initObj.image
      }
      else {
        this.image = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ResizedImage
    // Serialize message field [original_height]
    bufferOffset = _serializer.uint32(obj.original_height, buffer, bufferOffset);
    // Serialize message field [original_width]
    bufferOffset = _serializer.uint32(obj.original_width, buffer, bufferOffset);
    // Serialize message field [image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.image, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ResizedImage
    let len;
    let data = new ResizedImage(null);
    // Deserialize message field [original_height]
    data.original_height = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [original_width]
    data.original_width = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [image]
    data.image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.image);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'image_transport_tutorial/ResizedImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37d63d52feac66587bdbae1a040ffc70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 original_height
    uint32 original_width
    sensor_msgs/Image image
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of cameara
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ResizedImage(null);
    if (msg.original_height !== undefined) {
      resolved.original_height = msg.original_height;
    }
    else {
      resolved.original_height = 0
    }

    if (msg.original_width !== undefined) {
      resolved.original_width = msg.original_width;
    }
    else {
      resolved.original_width = 0
    }

    if (msg.image !== undefined) {
      resolved.image = sensor_msgs.msg.Image.Resolve(msg.image)
    }
    else {
      resolved.image = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = ResizedImage;

; Auto-generated. Do not edit!


(cl:in-package image_transport_tutorial-msg)


;//! \htmlinclude ResizedImage.msg.html

(cl:defclass <ResizedImage> (roslisp-msg-protocol:ros-message)
  ((original_height
    :reader original_height
    :initarg :original_height
    :type cl:integer
    :initform 0)
   (original_width
    :reader original_width
    :initarg :original_width
    :type cl:integer
    :initform 0)
   (image
    :reader image
    :initarg :image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass ResizedImage (<ResizedImage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ResizedImage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ResizedImage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_transport_tutorial-msg:<ResizedImage> is deprecated: use image_transport_tutorial-msg:ResizedImage instead.")))

(cl:ensure-generic-function 'original_height-val :lambda-list '(m))
(cl:defmethod original_height-val ((m <ResizedImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_transport_tutorial-msg:original_height-val is deprecated.  Use image_transport_tutorial-msg:original_height instead.")
  (original_height m))

(cl:ensure-generic-function 'original_width-val :lambda-list '(m))
(cl:defmethod original_width-val ((m <ResizedImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_transport_tutorial-msg:original_width-val is deprecated.  Use image_transport_tutorial-msg:original_width instead.")
  (original_width m))

(cl:ensure-generic-function 'image-val :lambda-list '(m))
(cl:defmethod image-val ((m <ResizedImage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_transport_tutorial-msg:image-val is deprecated.  Use image_transport_tutorial-msg:image instead.")
  (image m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ResizedImage>) ostream)
  "Serializes a message object of type '<ResizedImage>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_width)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ResizedImage>) istream)
  "Deserializes a message object of type '<ResizedImage>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'original_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'original_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'original_width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'original_width)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ResizedImage>)))
  "Returns string type for a message object of type '<ResizedImage>"
  "image_transport_tutorial/ResizedImage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ResizedImage)))
  "Returns string type for a message object of type 'ResizedImage"
  "image_transport_tutorial/ResizedImage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ResizedImage>)))
  "Returns md5sum for a message object of type '<ResizedImage>"
  "37d63d52feac66587bdbae1a040ffc70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ResizedImage)))
  "Returns md5sum for a message object of type 'ResizedImage"
  "37d63d52feac66587bdbae1a040ffc70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ResizedImage>)))
  "Returns full string definition for message of type '<ResizedImage>"
  (cl:format cl:nil "uint32 original_height~%uint32 original_width~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ResizedImage)))
  "Returns full string definition for message of type 'ResizedImage"
  (cl:format cl:nil "uint32 original_height~%uint32 original_width~%sensor_msgs/Image image~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ResizedImage>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ResizedImage>))
  "Converts a ROS message object to a list"
  (cl:list 'ResizedImage
    (cl:cons ':original_height (original_height msg))
    (cl:cons ':original_width (original_width msg))
    (cl:cons ':image (image msg))
))

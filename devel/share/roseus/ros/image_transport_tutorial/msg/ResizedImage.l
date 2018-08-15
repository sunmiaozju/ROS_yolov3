;; Auto-generated. Do not edit!


(when (boundp 'image_transport_tutorial::ResizedImage)
  (if (not (find-package "IMAGE_TRANSPORT_TUTORIAL"))
    (make-package "IMAGE_TRANSPORT_TUTORIAL"))
  (shadow 'ResizedImage (find-package "IMAGE_TRANSPORT_TUTORIAL")))
(unless (find-package "IMAGE_TRANSPORT_TUTORIAL::RESIZEDIMAGE")
  (make-package "IMAGE_TRANSPORT_TUTORIAL::RESIZEDIMAGE"))

(in-package "ROS")
;;//! \htmlinclude ResizedImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass image_transport_tutorial::ResizedImage
  :super ros::object
  :slots (_original_height _original_width _image ))

(defmethod image_transport_tutorial::ResizedImage
  (:init
   (&key
    ((:original_height __original_height) 0)
    ((:original_width __original_width) 0)
    ((:image __image) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _original_height (round __original_height))
   (setq _original_width (round __original_width))
   (setq _image __image)
   self)
  (:original_height
   (&optional __original_height)
   (if __original_height (setq _original_height __original_height)) _original_height)
  (:original_width
   (&optional __original_width)
   (if __original_width (setq _original_width __original_width)) _original_width)
  (:image
   (&rest __image)
   (if (keywordp (car __image))
       (send* _image __image)
     (progn
       (if __image (setq _image (car __image)))
       _image)))
  (:serialization-length
   ()
   (+
    ;; uint32 _original_height
    4
    ;; uint32 _original_width
    4
    ;; sensor_msgs/Image _image
    (send _image :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _original_height
       (write-long _original_height s)
     ;; uint32 _original_width
       (write-long _original_width s)
     ;; sensor_msgs/Image _image
       (send _image :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _original_height
     (setq _original_height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _original_width
     (setq _original_width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/Image _image
     (send _image :deserialize buf ptr-) (incf ptr- (send _image :serialization-length))
   ;;
   self)
  )

(setf (get image_transport_tutorial::ResizedImage :md5sum-) "37d63d52feac66587bdbae1a040ffc70")
(setf (get image_transport_tutorial::ResizedImage :datatype-) "image_transport_tutorial/ResizedImage")
(setf (get image_transport_tutorial::ResizedImage :definition-)
      "uint32 original_height
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

")



(provide :image_transport_tutorial/ResizedImage "37d63d52feac66587bdbae1a040ffc70")




(cl:in-package :asdf)

(defsystem "darknet_ros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBox" :depends-on ("_package_BoundingBox"))
    (:file "_package_BoundingBox" :depends-on ("_package"))
    (:file "BoundingBoxes" :depends-on ("_package_BoundingBoxes"))
    (:file "_package_BoundingBoxes" :depends-on ("_package"))
    (:file "CheckForObjectsAction" :depends-on ("_package_CheckForObjectsAction"))
    (:file "_package_CheckForObjectsAction" :depends-on ("_package"))
    (:file "CheckForObjectsActionFeedback" :depends-on ("_package_CheckForObjectsActionFeedback"))
    (:file "_package_CheckForObjectsActionFeedback" :depends-on ("_package"))
    (:file "CheckForObjectsActionGoal" :depends-on ("_package_CheckForObjectsActionGoal"))
    (:file "_package_CheckForObjectsActionGoal" :depends-on ("_package"))
    (:file "CheckForObjectsActionResult" :depends-on ("_package_CheckForObjectsActionResult"))
    (:file "_package_CheckForObjectsActionResult" :depends-on ("_package"))
    (:file "CheckForObjectsFeedback" :depends-on ("_package_CheckForObjectsFeedback"))
    (:file "_package_CheckForObjectsFeedback" :depends-on ("_package"))
    (:file "CheckForObjectsGoal" :depends-on ("_package_CheckForObjectsGoal"))
    (:file "_package_CheckForObjectsGoal" :depends-on ("_package"))
    (:file "CheckForObjectsResult" :depends-on ("_package_CheckForObjectsResult"))
    (:file "_package_CheckForObjectsResult" :depends-on ("_package"))
  ))
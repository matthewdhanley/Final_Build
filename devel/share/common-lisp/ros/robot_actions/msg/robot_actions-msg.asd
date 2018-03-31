
(cl:in-package :asdf)

(defsystem "robot_actions-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "move_baseAction" :depends-on ("_package_move_baseAction"))
    (:file "_package_move_baseAction" :depends-on ("_package"))
    (:file "move_baseActionFeedback" :depends-on ("_package_move_baseActionFeedback"))
    (:file "_package_move_baseActionFeedback" :depends-on ("_package"))
    (:file "move_baseActionGoal" :depends-on ("_package_move_baseActionGoal"))
    (:file "_package_move_baseActionGoal" :depends-on ("_package"))
    (:file "move_baseActionResult" :depends-on ("_package_move_baseActionResult"))
    (:file "_package_move_baseActionResult" :depends-on ("_package"))
    (:file "move_baseFeedback" :depends-on ("_package_move_baseFeedback"))
    (:file "_package_move_baseFeedback" :depends-on ("_package"))
    (:file "move_baseGoal" :depends-on ("_package_move_baseGoal"))
    (:file "_package_move_baseGoal" :depends-on ("_package"))
    (:file "move_baseResult" :depends-on ("_package_move_baseResult"))
    (:file "_package_move_baseResult" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "self_msgs_and_srvs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "input_point" :depends-on ("_package_input_point"))
    (:file "_package_input_point" :depends-on ("_package"))
    (:file "output_point" :depends-on ("_package_output_point"))
    (:file "_package_output_point" :depends-on ("_package"))
  ))

(cl:in-package :asdf)

(defsystem "self_msgs_and_srvs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :self_msgs_and_srvs-msg
)
  :components ((:file "_package")
    (:file "GlbObsRcv" :depends-on ("_package_GlbObsRcv"))
    (:file "_package_GlbObsRcv" :depends-on ("_package"))
    (:file "LearningSampler" :depends-on ("_package_LearningSampler"))
    (:file "_package_LearningSampler" :depends-on ("_package"))
  ))
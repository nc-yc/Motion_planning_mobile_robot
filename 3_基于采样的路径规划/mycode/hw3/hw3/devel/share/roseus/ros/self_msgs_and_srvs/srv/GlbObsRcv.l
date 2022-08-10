;; Auto-generated. Do not edit!


(when (boundp 'self_msgs_and_srvs::GlbObsRcv)
  (if (not (find-package "SELF_MSGS_AND_SRVS"))
    (make-package "SELF_MSGS_AND_SRVS"))
  (shadow 'GlbObsRcv (find-package "SELF_MSGS_AND_SRVS")))
(unless (find-package "SELF_MSGS_AND_SRVS::GLBOBSRCV")
  (make-package "SELF_MSGS_AND_SRVS::GLBOBSRCV"))
(unless (find-package "SELF_MSGS_AND_SRVS::GLBOBSRCVREQUEST")
  (make-package "SELF_MSGS_AND_SRVS::GLBOBSRCVREQUEST"))
(unless (find-package "SELF_MSGS_AND_SRVS::GLBOBSRCVRESPONSE")
  (make-package "SELF_MSGS_AND_SRVS::GLBOBSRCVRESPONSE"))

(in-package "ROS")





(defclass self_msgs_and_srvs::GlbObsRcvRequest
  :super ros::object
  :slots (_req ))

(defmethod self_msgs_and_srvs::GlbObsRcvRequest
  (:init
   (&key
    ((:req __req) nil)
    )
   (send-super :init)
   (setq _req __req)
   self)
  (:req
   (&optional __req)
   (if __req (setq _req __req)) _req)
  (:serialization-length
   ()
   (+
    ;; bool _req
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _req
       (if _req (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _req
     (setq _req (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass self_msgs_and_srvs::GlbObsRcvResponse
  :super ros::object
  :slots (_result ))

(defmethod self_msgs_and_srvs::GlbObsRcvResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass self_msgs_and_srvs::GlbObsRcv
  :super ros::object
  :slots ())

(setf (get self_msgs_and_srvs::GlbObsRcv :md5sum-) "7f352b44c251978f0843cd60887550cf")
(setf (get self_msgs_and_srvs::GlbObsRcv :datatype-) "self_msgs_and_srvs/GlbObsRcv")
(setf (get self_msgs_and_srvs::GlbObsRcv :request) self_msgs_and_srvs::GlbObsRcvRequest)
(setf (get self_msgs_and_srvs::GlbObsRcv :response) self_msgs_and_srvs::GlbObsRcvResponse)

(defmethod self_msgs_and_srvs::GlbObsRcvRequest
  (:response () (instance self_msgs_and_srvs::GlbObsRcvResponse :init)))

(setf (get self_msgs_and_srvs::GlbObsRcvRequest :md5sum-) "7f352b44c251978f0843cd60887550cf")
(setf (get self_msgs_and_srvs::GlbObsRcvRequest :datatype-) "self_msgs_and_srvs/GlbObsRcvRequest")
(setf (get self_msgs_and_srvs::GlbObsRcvRequest :definition-)
      "bool req
---
bool result

")

(setf (get self_msgs_and_srvs::GlbObsRcvResponse :md5sum-) "7f352b44c251978f0843cd60887550cf")
(setf (get self_msgs_and_srvs::GlbObsRcvResponse :datatype-) "self_msgs_and_srvs/GlbObsRcvResponse")
(setf (get self_msgs_and_srvs::GlbObsRcvResponse :definition-)
      "bool req
---
bool result

")



(provide :self_msgs_and_srvs/GlbObsRcv "7f352b44c251978f0843cd60887550cf")



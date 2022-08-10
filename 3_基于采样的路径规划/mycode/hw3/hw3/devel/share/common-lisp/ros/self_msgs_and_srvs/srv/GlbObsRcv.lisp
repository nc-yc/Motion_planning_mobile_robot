; Auto-generated. Do not edit!


(cl:in-package self_msgs_and_srvs-srv)


;//! \htmlinclude GlbObsRcv-request.msg.html

(cl:defclass <GlbObsRcv-request> (roslisp-msg-protocol:ros-message)
  ((req
    :reader req
    :initarg :req
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GlbObsRcv-request (<GlbObsRcv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlbObsRcv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlbObsRcv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-srv:<GlbObsRcv-request> is deprecated: use self_msgs_and_srvs-srv:GlbObsRcv-request instead.")))

(cl:ensure-generic-function 'req-val :lambda-list '(m))
(cl:defmethod req-val ((m <GlbObsRcv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-srv:req-val is deprecated.  Use self_msgs_and_srvs-srv:req instead.")
  (req m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlbObsRcv-request>) ostream)
  "Serializes a message object of type '<GlbObsRcv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'req) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlbObsRcv-request>) istream)
  "Deserializes a message object of type '<GlbObsRcv-request>"
    (cl:setf (cl:slot-value msg 'req) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlbObsRcv-request>)))
  "Returns string type for a service object of type '<GlbObsRcv-request>"
  "self_msgs_and_srvs/GlbObsRcvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlbObsRcv-request)))
  "Returns string type for a service object of type 'GlbObsRcv-request"
  "self_msgs_and_srvs/GlbObsRcvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlbObsRcv-request>)))
  "Returns md5sum for a message object of type '<GlbObsRcv-request>"
  "7f352b44c251978f0843cd60887550cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlbObsRcv-request)))
  "Returns md5sum for a message object of type 'GlbObsRcv-request"
  "7f352b44c251978f0843cd60887550cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlbObsRcv-request>)))
  "Returns full string definition for message of type '<GlbObsRcv-request>"
  (cl:format cl:nil "bool req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlbObsRcv-request)))
  "Returns full string definition for message of type 'GlbObsRcv-request"
  (cl:format cl:nil "bool req~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlbObsRcv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlbObsRcv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlbObsRcv-request
    (cl:cons ':req (req msg))
))
;//! \htmlinclude GlbObsRcv-response.msg.html

(cl:defclass <GlbObsRcv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GlbObsRcv-response (<GlbObsRcv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlbObsRcv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlbObsRcv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-srv:<GlbObsRcv-response> is deprecated: use self_msgs_and_srvs-srv:GlbObsRcv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GlbObsRcv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-srv:result-val is deprecated.  Use self_msgs_and_srvs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlbObsRcv-response>) ostream)
  "Serializes a message object of type '<GlbObsRcv-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlbObsRcv-response>) istream)
  "Deserializes a message object of type '<GlbObsRcv-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlbObsRcv-response>)))
  "Returns string type for a service object of type '<GlbObsRcv-response>"
  "self_msgs_and_srvs/GlbObsRcvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlbObsRcv-response)))
  "Returns string type for a service object of type 'GlbObsRcv-response"
  "self_msgs_and_srvs/GlbObsRcvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlbObsRcv-response>)))
  "Returns md5sum for a message object of type '<GlbObsRcv-response>"
  "7f352b44c251978f0843cd60887550cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlbObsRcv-response)))
  "Returns md5sum for a message object of type 'GlbObsRcv-response"
  "7f352b44c251978f0843cd60887550cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlbObsRcv-response>)))
  "Returns full string definition for message of type '<GlbObsRcv-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlbObsRcv-response)))
  "Returns full string definition for message of type 'GlbObsRcv-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlbObsRcv-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlbObsRcv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlbObsRcv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlbObsRcv)))
  'GlbObsRcv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlbObsRcv)))
  'GlbObsRcv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlbObsRcv)))
  "Returns string type for a service object of type '<GlbObsRcv>"
  "self_msgs_and_srvs/GlbObsRcv")
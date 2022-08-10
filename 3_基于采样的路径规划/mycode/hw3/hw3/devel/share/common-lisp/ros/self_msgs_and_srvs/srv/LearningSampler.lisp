; Auto-generated. Do not edit!


(cl:in-package self_msgs_and_srvs-srv)


;//! \htmlinclude LearningSampler-request.msg.html

(cl:defclass <LearningSampler-request> (roslisp-msg-protocol:ros-message)
  ((input_traj
    :reader input_traj
    :initarg :input_traj
    :type (cl:vector self_msgs_and_srvs-msg:input_point)
   :initform (cl:make-array 0 :element-type 'self_msgs_and_srvs-msg:input_point :initial-element (cl:make-instance 'self_msgs_and_srvs-msg:input_point))))
)

(cl:defclass LearningSampler-request (<LearningSampler-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearningSampler-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearningSampler-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-srv:<LearningSampler-request> is deprecated: use self_msgs_and_srvs-srv:LearningSampler-request instead.")))

(cl:ensure-generic-function 'input_traj-val :lambda-list '(m))
(cl:defmethod input_traj-val ((m <LearningSampler-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-srv:input_traj-val is deprecated.  Use self_msgs_and_srvs-srv:input_traj instead.")
  (input_traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearningSampler-request>) ostream)
  "Serializes a message object of type '<LearningSampler-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'input_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'input_traj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearningSampler-request>) istream)
  "Deserializes a message object of type '<LearningSampler-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'input_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'input_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'self_msgs_and_srvs-msg:input_point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearningSampler-request>)))
  "Returns string type for a service object of type '<LearningSampler-request>"
  "self_msgs_and_srvs/LearningSamplerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearningSampler-request)))
  "Returns string type for a service object of type 'LearningSampler-request"
  "self_msgs_and_srvs/LearningSamplerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearningSampler-request>)))
  "Returns md5sum for a message object of type '<LearningSampler-request>"
  "9b3be973a2fd70300d20649e1a983955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearningSampler-request)))
  "Returns md5sum for a message object of type 'LearningSampler-request"
  "9b3be973a2fd70300d20649e1a983955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearningSampler-request>)))
  "Returns full string definition for message of type '<LearningSampler-request>"
  (cl:format cl:nil "self_msgs_and_srvs/input_point[] input_traj~%~%================================================================================~%MSG: self_msgs_and_srvs/input_point~%geometry_msgs/Point cur_pos~%geometry_msgs/Point pred_pos~%geometry_msgs/Point succ_pos~%~%geometry_msgs/Point target_pos~%geometry_msgs/Point target_vel~%geometry_msgs/Point target_acc~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearningSampler-request)))
  "Returns full string definition for message of type 'LearningSampler-request"
  (cl:format cl:nil "self_msgs_and_srvs/input_point[] input_traj~%~%================================================================================~%MSG: self_msgs_and_srvs/input_point~%geometry_msgs/Point cur_pos~%geometry_msgs/Point pred_pos~%geometry_msgs/Point succ_pos~%~%geometry_msgs/Point target_pos~%geometry_msgs/Point target_vel~%geometry_msgs/Point target_acc~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearningSampler-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'input_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearningSampler-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LearningSampler-request
    (cl:cons ':input_traj (input_traj msg))
))
;//! \htmlinclude LearningSampler-response.msg.html

(cl:defclass <LearningSampler-response> (roslisp-msg-protocol:ros-message)
  ((output_traj
    :reader output_traj
    :initarg :output_traj
    :type (cl:vector self_msgs_and_srvs-msg:output_point)
   :initform (cl:make-array 0 :element-type 'self_msgs_and_srvs-msg:output_point :initial-element (cl:make-instance 'self_msgs_and_srvs-msg:output_point))))
)

(cl:defclass LearningSampler-response (<LearningSampler-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LearningSampler-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LearningSampler-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-srv:<LearningSampler-response> is deprecated: use self_msgs_and_srvs-srv:LearningSampler-response instead.")))

(cl:ensure-generic-function 'output_traj-val :lambda-list '(m))
(cl:defmethod output_traj-val ((m <LearningSampler-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-srv:output_traj-val is deprecated.  Use self_msgs_and_srvs-srv:output_traj instead.")
  (output_traj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LearningSampler-response>) ostream)
  "Serializes a message object of type '<LearningSampler-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'output_traj))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'output_traj))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LearningSampler-response>) istream)
  "Deserializes a message object of type '<LearningSampler-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'output_traj) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'output_traj)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'self_msgs_and_srvs-msg:output_point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LearningSampler-response>)))
  "Returns string type for a service object of type '<LearningSampler-response>"
  "self_msgs_and_srvs/LearningSamplerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearningSampler-response)))
  "Returns string type for a service object of type 'LearningSampler-response"
  "self_msgs_and_srvs/LearningSamplerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LearningSampler-response>)))
  "Returns md5sum for a message object of type '<LearningSampler-response>"
  "9b3be973a2fd70300d20649e1a983955")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LearningSampler-response)))
  "Returns md5sum for a message object of type 'LearningSampler-response"
  "9b3be973a2fd70300d20649e1a983955")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LearningSampler-response>)))
  "Returns full string definition for message of type '<LearningSampler-response>"
  (cl:format cl:nil "self_msgs_and_srvs/output_point[] output_traj~%~%~%================================================================================~%MSG: self_msgs_and_srvs/output_point~%geometry_msgs/Point pos_mu~%geometry_msgs/Point pos_var~%~%geometry_msgs/Point vel_mu ~%geometry_msgs/Point vel_var~%~%# geometry_msgs/Point theta_mu ~%# geometry_msgs/Point theta_var~%~%geometry_msgs/Point acc_mu~%geometry_msgs/Point acc_var~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LearningSampler-response)))
  "Returns full string definition for message of type 'LearningSampler-response"
  (cl:format cl:nil "self_msgs_and_srvs/output_point[] output_traj~%~%~%================================================================================~%MSG: self_msgs_and_srvs/output_point~%geometry_msgs/Point pos_mu~%geometry_msgs/Point pos_var~%~%geometry_msgs/Point vel_mu ~%geometry_msgs/Point vel_var~%~%# geometry_msgs/Point theta_mu ~%# geometry_msgs/Point theta_var~%~%geometry_msgs/Point acc_mu~%geometry_msgs/Point acc_var~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LearningSampler-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'output_traj) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LearningSampler-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LearningSampler-response
    (cl:cons ':output_traj (output_traj msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LearningSampler)))
  'LearningSampler-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LearningSampler)))
  'LearningSampler-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LearningSampler)))
  "Returns string type for a service object of type '<LearningSampler>"
  "self_msgs_and_srvs/LearningSampler")
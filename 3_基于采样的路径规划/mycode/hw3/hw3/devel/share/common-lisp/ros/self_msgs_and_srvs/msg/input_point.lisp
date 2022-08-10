; Auto-generated. Do not edit!


(cl:in-package self_msgs_and_srvs-msg)


;//! \htmlinclude input_point.msg.html

(cl:defclass <input_point> (roslisp-msg-protocol:ros-message)
  ((cur_pos
    :reader cur_pos
    :initarg :cur_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pred_pos
    :reader pred_pos
    :initarg :pred_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (succ_pos
    :reader succ_pos
    :initarg :succ_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (target_pos
    :reader target_pos
    :initarg :target_pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (target_vel
    :reader target_vel
    :initarg :target_vel
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (target_acc
    :reader target_acc
    :initarg :target_acc
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass input_point (<input_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <input_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'input_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-msg:<input_point> is deprecated: use self_msgs_and_srvs-msg:input_point instead.")))

(cl:ensure-generic-function 'cur_pos-val :lambda-list '(m))
(cl:defmethod cur_pos-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:cur_pos-val is deprecated.  Use self_msgs_and_srvs-msg:cur_pos instead.")
  (cur_pos m))

(cl:ensure-generic-function 'pred_pos-val :lambda-list '(m))
(cl:defmethod pred_pos-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:pred_pos-val is deprecated.  Use self_msgs_and_srvs-msg:pred_pos instead.")
  (pred_pos m))

(cl:ensure-generic-function 'succ_pos-val :lambda-list '(m))
(cl:defmethod succ_pos-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:succ_pos-val is deprecated.  Use self_msgs_and_srvs-msg:succ_pos instead.")
  (succ_pos m))

(cl:ensure-generic-function 'target_pos-val :lambda-list '(m))
(cl:defmethod target_pos-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:target_pos-val is deprecated.  Use self_msgs_and_srvs-msg:target_pos instead.")
  (target_pos m))

(cl:ensure-generic-function 'target_vel-val :lambda-list '(m))
(cl:defmethod target_vel-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:target_vel-val is deprecated.  Use self_msgs_and_srvs-msg:target_vel instead.")
  (target_vel m))

(cl:ensure-generic-function 'target_acc-val :lambda-list '(m))
(cl:defmethod target_acc-val ((m <input_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:target_acc-val is deprecated.  Use self_msgs_and_srvs-msg:target_acc instead.")
  (target_acc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <input_point>) ostream)
  "Serializes a message object of type '<input_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cur_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pred_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'succ_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_pos) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_vel) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target_acc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <input_point>) istream)
  "Deserializes a message object of type '<input_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cur_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pred_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'succ_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_pos) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_vel) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target_acc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<input_point>)))
  "Returns string type for a message object of type '<input_point>"
  "self_msgs_and_srvs/input_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'input_point)))
  "Returns string type for a message object of type 'input_point"
  "self_msgs_and_srvs/input_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<input_point>)))
  "Returns md5sum for a message object of type '<input_point>"
  "4b446b61e7be949357360ca65dc198b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'input_point)))
  "Returns md5sum for a message object of type 'input_point"
  "4b446b61e7be949357360ca65dc198b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<input_point>)))
  "Returns full string definition for message of type '<input_point>"
  (cl:format cl:nil "geometry_msgs/Point cur_pos~%geometry_msgs/Point pred_pos~%geometry_msgs/Point succ_pos~%~%geometry_msgs/Point target_pos~%geometry_msgs/Point target_vel~%geometry_msgs/Point target_acc~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'input_point)))
  "Returns full string definition for message of type 'input_point"
  (cl:format cl:nil "geometry_msgs/Point cur_pos~%geometry_msgs/Point pred_pos~%geometry_msgs/Point succ_pos~%~%geometry_msgs/Point target_pos~%geometry_msgs/Point target_vel~%geometry_msgs/Point target_acc~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <input_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cur_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pred_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'succ_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_pos))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_vel))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target_acc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <input_point>))
  "Converts a ROS message object to a list"
  (cl:list 'input_point
    (cl:cons ':cur_pos (cur_pos msg))
    (cl:cons ':pred_pos (pred_pos msg))
    (cl:cons ':succ_pos (succ_pos msg))
    (cl:cons ':target_pos (target_pos msg))
    (cl:cons ':target_vel (target_vel msg))
    (cl:cons ':target_acc (target_acc msg))
))

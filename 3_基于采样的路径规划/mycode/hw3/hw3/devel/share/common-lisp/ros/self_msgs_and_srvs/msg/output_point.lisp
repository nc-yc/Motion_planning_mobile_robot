; Auto-generated. Do not edit!


(cl:in-package self_msgs_and_srvs-msg)


;//! \htmlinclude output_point.msg.html

(cl:defclass <output_point> (roslisp-msg-protocol:ros-message)
  ((pos_mu
    :reader pos_mu
    :initarg :pos_mu
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pos_var
    :reader pos_var
    :initarg :pos_var
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (vel_mu
    :reader vel_mu
    :initarg :vel_mu
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (vel_var
    :reader vel_var
    :initarg :vel_var
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (acc_mu
    :reader acc_mu
    :initarg :acc_mu
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (acc_var
    :reader acc_var
    :initarg :acc_var
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass output_point (<output_point>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <output_point>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'output_point)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_msgs_and_srvs-msg:<output_point> is deprecated: use self_msgs_and_srvs-msg:output_point instead.")))

(cl:ensure-generic-function 'pos_mu-val :lambda-list '(m))
(cl:defmethod pos_mu-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:pos_mu-val is deprecated.  Use self_msgs_and_srvs-msg:pos_mu instead.")
  (pos_mu m))

(cl:ensure-generic-function 'pos_var-val :lambda-list '(m))
(cl:defmethod pos_var-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:pos_var-val is deprecated.  Use self_msgs_and_srvs-msg:pos_var instead.")
  (pos_var m))

(cl:ensure-generic-function 'vel_mu-val :lambda-list '(m))
(cl:defmethod vel_mu-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:vel_mu-val is deprecated.  Use self_msgs_and_srvs-msg:vel_mu instead.")
  (vel_mu m))

(cl:ensure-generic-function 'vel_var-val :lambda-list '(m))
(cl:defmethod vel_var-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:vel_var-val is deprecated.  Use self_msgs_and_srvs-msg:vel_var instead.")
  (vel_var m))

(cl:ensure-generic-function 'acc_mu-val :lambda-list '(m))
(cl:defmethod acc_mu-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:acc_mu-val is deprecated.  Use self_msgs_and_srvs-msg:acc_mu instead.")
  (acc_mu m))

(cl:ensure-generic-function 'acc_var-val :lambda-list '(m))
(cl:defmethod acc_var-val ((m <output_point>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_msgs_and_srvs-msg:acc_var-val is deprecated.  Use self_msgs_and_srvs-msg:acc_var instead.")
  (acc_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <output_point>) ostream)
  "Serializes a message object of type '<output_point>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_mu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos_var) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_mu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vel_var) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_mu) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc_var) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <output_point>) istream)
  "Deserializes a message object of type '<output_point>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_mu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos_var) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_mu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vel_var) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_mu) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc_var) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<output_point>)))
  "Returns string type for a message object of type '<output_point>"
  "self_msgs_and_srvs/output_point")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'output_point)))
  "Returns string type for a message object of type 'output_point"
  "self_msgs_and_srvs/output_point")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<output_point>)))
  "Returns md5sum for a message object of type '<output_point>"
  "5cbc628d4028ac02bd3f45d03121084c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'output_point)))
  "Returns md5sum for a message object of type 'output_point"
  "5cbc628d4028ac02bd3f45d03121084c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<output_point>)))
  "Returns full string definition for message of type '<output_point>"
  (cl:format cl:nil "geometry_msgs/Point pos_mu~%geometry_msgs/Point pos_var~%~%geometry_msgs/Point vel_mu ~%geometry_msgs/Point vel_var~%~%# geometry_msgs/Point theta_mu ~%# geometry_msgs/Point theta_var~%~%geometry_msgs/Point acc_mu~%geometry_msgs/Point acc_var~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'output_point)))
  "Returns full string definition for message of type 'output_point"
  (cl:format cl:nil "geometry_msgs/Point pos_mu~%geometry_msgs/Point pos_var~%~%geometry_msgs/Point vel_mu ~%geometry_msgs/Point vel_var~%~%# geometry_msgs/Point theta_mu ~%# geometry_msgs/Point theta_var~%~%geometry_msgs/Point acc_mu~%geometry_msgs/Point acc_var~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <output_point>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_mu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos_var))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_mu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vel_var))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_mu))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc_var))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <output_point>))
  "Converts a ROS message object to a list"
  (cl:list 'output_point
    (cl:cons ':pos_mu (pos_mu msg))
    (cl:cons ':pos_var (pos_var msg))
    (cl:cons ':vel_mu (vel_mu msg))
    (cl:cons ':vel_var (vel_var msg))
    (cl:cons ':acc_mu (acc_mu msg))
    (cl:cons ':acc_var (acc_var msg))
))

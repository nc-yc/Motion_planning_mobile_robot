;; Auto-generated. Do not edit!


(when (boundp 'self_msgs_and_srvs::output_point)
  (if (not (find-package "SELF_MSGS_AND_SRVS"))
    (make-package "SELF_MSGS_AND_SRVS"))
  (shadow 'output_point (find-package "SELF_MSGS_AND_SRVS")))
(unless (find-package "SELF_MSGS_AND_SRVS::OUTPUT_POINT")
  (make-package "SELF_MSGS_AND_SRVS::OUTPUT_POINT"))

(in-package "ROS")
;;//! \htmlinclude output_point.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass self_msgs_and_srvs::output_point
  :super ros::object
  :slots (_pos_mu _pos_var _vel_mu _vel_var _acc_mu _acc_var ))

(defmethod self_msgs_and_srvs::output_point
  (:init
   (&key
    ((:pos_mu __pos_mu) (instance geometry_msgs::Point :init))
    ((:pos_var __pos_var) (instance geometry_msgs::Point :init))
    ((:vel_mu __vel_mu) (instance geometry_msgs::Point :init))
    ((:vel_var __vel_var) (instance geometry_msgs::Point :init))
    ((:acc_mu __acc_mu) (instance geometry_msgs::Point :init))
    ((:acc_var __acc_var) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _pos_mu __pos_mu)
   (setq _pos_var __pos_var)
   (setq _vel_mu __vel_mu)
   (setq _vel_var __vel_var)
   (setq _acc_mu __acc_mu)
   (setq _acc_var __acc_var)
   self)
  (:pos_mu
   (&rest __pos_mu)
   (if (keywordp (car __pos_mu))
       (send* _pos_mu __pos_mu)
     (progn
       (if __pos_mu (setq _pos_mu (car __pos_mu)))
       _pos_mu)))
  (:pos_var
   (&rest __pos_var)
   (if (keywordp (car __pos_var))
       (send* _pos_var __pos_var)
     (progn
       (if __pos_var (setq _pos_var (car __pos_var)))
       _pos_var)))
  (:vel_mu
   (&rest __vel_mu)
   (if (keywordp (car __vel_mu))
       (send* _vel_mu __vel_mu)
     (progn
       (if __vel_mu (setq _vel_mu (car __vel_mu)))
       _vel_mu)))
  (:vel_var
   (&rest __vel_var)
   (if (keywordp (car __vel_var))
       (send* _vel_var __vel_var)
     (progn
       (if __vel_var (setq _vel_var (car __vel_var)))
       _vel_var)))
  (:acc_mu
   (&rest __acc_mu)
   (if (keywordp (car __acc_mu))
       (send* _acc_mu __acc_mu)
     (progn
       (if __acc_mu (setq _acc_mu (car __acc_mu)))
       _acc_mu)))
  (:acc_var
   (&rest __acc_var)
   (if (keywordp (car __acc_var))
       (send* _acc_var __acc_var)
     (progn
       (if __acc_var (setq _acc_var (car __acc_var)))
       _acc_var)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos_mu
    (send _pos_mu :serialization-length)
    ;; geometry_msgs/Point _pos_var
    (send _pos_var :serialization-length)
    ;; geometry_msgs/Point _vel_mu
    (send _vel_mu :serialization-length)
    ;; geometry_msgs/Point _vel_var
    (send _vel_var :serialization-length)
    ;; geometry_msgs/Point _acc_mu
    (send _acc_mu :serialization-length)
    ;; geometry_msgs/Point _acc_var
    (send _acc_var :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos_mu
       (send _pos_mu :serialize s)
     ;; geometry_msgs/Point _pos_var
       (send _pos_var :serialize s)
     ;; geometry_msgs/Point _vel_mu
       (send _vel_mu :serialize s)
     ;; geometry_msgs/Point _vel_var
       (send _vel_var :serialize s)
     ;; geometry_msgs/Point _acc_mu
       (send _acc_mu :serialize s)
     ;; geometry_msgs/Point _acc_var
       (send _acc_var :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos_mu
     (send _pos_mu :deserialize buf ptr-) (incf ptr- (send _pos_mu :serialization-length))
   ;; geometry_msgs/Point _pos_var
     (send _pos_var :deserialize buf ptr-) (incf ptr- (send _pos_var :serialization-length))
   ;; geometry_msgs/Point _vel_mu
     (send _vel_mu :deserialize buf ptr-) (incf ptr- (send _vel_mu :serialization-length))
   ;; geometry_msgs/Point _vel_var
     (send _vel_var :deserialize buf ptr-) (incf ptr- (send _vel_var :serialization-length))
   ;; geometry_msgs/Point _acc_mu
     (send _acc_mu :deserialize buf ptr-) (incf ptr- (send _acc_mu :serialization-length))
   ;; geometry_msgs/Point _acc_var
     (send _acc_var :deserialize buf ptr-) (incf ptr- (send _acc_var :serialization-length))
   ;;
   self)
  )

(setf (get self_msgs_and_srvs::output_point :md5sum-) "5cbc628d4028ac02bd3f45d03121084c")
(setf (get self_msgs_and_srvs::output_point :datatype-) "self_msgs_and_srvs/output_point")
(setf (get self_msgs_and_srvs::output_point :definition-)
      "geometry_msgs/Point pos_mu
geometry_msgs/Point pos_var

geometry_msgs/Point vel_mu 
geometry_msgs/Point vel_var

# geometry_msgs/Point theta_mu 
# geometry_msgs/Point theta_var

geometry_msgs/Point acc_mu
geometry_msgs/Point acc_var


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :self_msgs_and_srvs/output_point "5cbc628d4028ac02bd3f45d03121084c")



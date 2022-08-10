;; Auto-generated. Do not edit!


(when (boundp 'self_msgs_and_srvs::input_point)
  (if (not (find-package "SELF_MSGS_AND_SRVS"))
    (make-package "SELF_MSGS_AND_SRVS"))
  (shadow 'input_point (find-package "SELF_MSGS_AND_SRVS")))
(unless (find-package "SELF_MSGS_AND_SRVS::INPUT_POINT")
  (make-package "SELF_MSGS_AND_SRVS::INPUT_POINT"))

(in-package "ROS")
;;//! \htmlinclude input_point.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass self_msgs_and_srvs::input_point
  :super ros::object
  :slots (_cur_pos _pred_pos _succ_pos _target_pos _target_vel _target_acc ))

(defmethod self_msgs_and_srvs::input_point
  (:init
   (&key
    ((:cur_pos __cur_pos) (instance geometry_msgs::Point :init))
    ((:pred_pos __pred_pos) (instance geometry_msgs::Point :init))
    ((:succ_pos __succ_pos) (instance geometry_msgs::Point :init))
    ((:target_pos __target_pos) (instance geometry_msgs::Point :init))
    ((:target_vel __target_vel) (instance geometry_msgs::Point :init))
    ((:target_acc __target_acc) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _cur_pos __cur_pos)
   (setq _pred_pos __pred_pos)
   (setq _succ_pos __succ_pos)
   (setq _target_pos __target_pos)
   (setq _target_vel __target_vel)
   (setq _target_acc __target_acc)
   self)
  (:cur_pos
   (&rest __cur_pos)
   (if (keywordp (car __cur_pos))
       (send* _cur_pos __cur_pos)
     (progn
       (if __cur_pos (setq _cur_pos (car __cur_pos)))
       _cur_pos)))
  (:pred_pos
   (&rest __pred_pos)
   (if (keywordp (car __pred_pos))
       (send* _pred_pos __pred_pos)
     (progn
       (if __pred_pos (setq _pred_pos (car __pred_pos)))
       _pred_pos)))
  (:succ_pos
   (&rest __succ_pos)
   (if (keywordp (car __succ_pos))
       (send* _succ_pos __succ_pos)
     (progn
       (if __succ_pos (setq _succ_pos (car __succ_pos)))
       _succ_pos)))
  (:target_pos
   (&rest __target_pos)
   (if (keywordp (car __target_pos))
       (send* _target_pos __target_pos)
     (progn
       (if __target_pos (setq _target_pos (car __target_pos)))
       _target_pos)))
  (:target_vel
   (&rest __target_vel)
   (if (keywordp (car __target_vel))
       (send* _target_vel __target_vel)
     (progn
       (if __target_vel (setq _target_vel (car __target_vel)))
       _target_vel)))
  (:target_acc
   (&rest __target_acc)
   (if (keywordp (car __target_acc))
       (send* _target_acc __target_acc)
     (progn
       (if __target_acc (setq _target_acc (car __target_acc)))
       _target_acc)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _cur_pos
    (send _cur_pos :serialization-length)
    ;; geometry_msgs/Point _pred_pos
    (send _pred_pos :serialization-length)
    ;; geometry_msgs/Point _succ_pos
    (send _succ_pos :serialization-length)
    ;; geometry_msgs/Point _target_pos
    (send _target_pos :serialization-length)
    ;; geometry_msgs/Point _target_vel
    (send _target_vel :serialization-length)
    ;; geometry_msgs/Point _target_acc
    (send _target_acc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _cur_pos
       (send _cur_pos :serialize s)
     ;; geometry_msgs/Point _pred_pos
       (send _pred_pos :serialize s)
     ;; geometry_msgs/Point _succ_pos
       (send _succ_pos :serialize s)
     ;; geometry_msgs/Point _target_pos
       (send _target_pos :serialize s)
     ;; geometry_msgs/Point _target_vel
       (send _target_vel :serialize s)
     ;; geometry_msgs/Point _target_acc
       (send _target_acc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _cur_pos
     (send _cur_pos :deserialize buf ptr-) (incf ptr- (send _cur_pos :serialization-length))
   ;; geometry_msgs/Point _pred_pos
     (send _pred_pos :deserialize buf ptr-) (incf ptr- (send _pred_pos :serialization-length))
   ;; geometry_msgs/Point _succ_pos
     (send _succ_pos :deserialize buf ptr-) (incf ptr- (send _succ_pos :serialization-length))
   ;; geometry_msgs/Point _target_pos
     (send _target_pos :deserialize buf ptr-) (incf ptr- (send _target_pos :serialization-length))
   ;; geometry_msgs/Point _target_vel
     (send _target_vel :deserialize buf ptr-) (incf ptr- (send _target_vel :serialization-length))
   ;; geometry_msgs/Point _target_acc
     (send _target_acc :deserialize buf ptr-) (incf ptr- (send _target_acc :serialization-length))
   ;;
   self)
  )

(setf (get self_msgs_and_srvs::input_point :md5sum-) "4b446b61e7be949357360ca65dc198b5")
(setf (get self_msgs_and_srvs::input_point :datatype-) "self_msgs_and_srvs/input_point")
(setf (get self_msgs_and_srvs::input_point :definition-)
      "geometry_msgs/Point cur_pos
geometry_msgs/Point pred_pos
geometry_msgs/Point succ_pos

geometry_msgs/Point target_pos
geometry_msgs/Point target_vel
geometry_msgs/Point target_acc

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :self_msgs_and_srvs/input_point "4b446b61e7be949357360ca65dc198b5")



;; Auto-generated. Do not edit!


(when (boundp 'self_msgs_and_srvs::LearningSampler)
  (if (not (find-package "SELF_MSGS_AND_SRVS"))
    (make-package "SELF_MSGS_AND_SRVS"))
  (shadow 'LearningSampler (find-package "SELF_MSGS_AND_SRVS")))
(unless (find-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLER")
  (make-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLER"))
(unless (find-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLERREQUEST")
  (make-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLERREQUEST"))
(unless (find-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLERRESPONSE")
  (make-package "SELF_MSGS_AND_SRVS::LEARNINGSAMPLERRESPONSE"))

(in-package "ROS")





(defclass self_msgs_and_srvs::LearningSamplerRequest
  :super ros::object
  :slots (_input_traj ))

(defmethod self_msgs_and_srvs::LearningSamplerRequest
  (:init
   (&key
    ((:input_traj __input_traj) (let (r) (dotimes (i 0) (push (instance self_msgs_and_srvs::input_point :init) r)) r))
    )
   (send-super :init)
   (setq _input_traj __input_traj)
   self)
  (:input_traj
   (&rest __input_traj)
   (if (keywordp (car __input_traj))
       (send* _input_traj __input_traj)
     (progn
       (if __input_traj (setq _input_traj (car __input_traj)))
       _input_traj)))
  (:serialization-length
   ()
   (+
    ;; self_msgs_and_srvs/input_point[] _input_traj
    (apply #'+ (send-all _input_traj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; self_msgs_and_srvs/input_point[] _input_traj
     (write-long (length _input_traj) s)
     (dolist (elem _input_traj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; self_msgs_and_srvs/input_point[] _input_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _input_traj (let (r) (dotimes (i n) (push (instance self_msgs_and_srvs::input_point :init) r)) r))
     (dolist (elem- _input_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass self_msgs_and_srvs::LearningSamplerResponse
  :super ros::object
  :slots (_output_traj ))

(defmethod self_msgs_and_srvs::LearningSamplerResponse
  (:init
   (&key
    ((:output_traj __output_traj) (let (r) (dotimes (i 0) (push (instance self_msgs_and_srvs::output_point :init) r)) r))
    )
   (send-super :init)
   (setq _output_traj __output_traj)
   self)
  (:output_traj
   (&rest __output_traj)
   (if (keywordp (car __output_traj))
       (send* _output_traj __output_traj)
     (progn
       (if __output_traj (setq _output_traj (car __output_traj)))
       _output_traj)))
  (:serialization-length
   ()
   (+
    ;; self_msgs_and_srvs/output_point[] _output_traj
    (apply #'+ (send-all _output_traj :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; self_msgs_and_srvs/output_point[] _output_traj
     (write-long (length _output_traj) s)
     (dolist (elem _output_traj)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; self_msgs_and_srvs/output_point[] _output_traj
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_traj (let (r) (dotimes (i n) (push (instance self_msgs_and_srvs::output_point :init) r)) r))
     (dolist (elem- _output_traj)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass self_msgs_and_srvs::LearningSampler
  :super ros::object
  :slots ())

(setf (get self_msgs_and_srvs::LearningSampler :md5sum-) "9b3be973a2fd70300d20649e1a983955")
(setf (get self_msgs_and_srvs::LearningSampler :datatype-) "self_msgs_and_srvs/LearningSampler")
(setf (get self_msgs_and_srvs::LearningSampler :request) self_msgs_and_srvs::LearningSamplerRequest)
(setf (get self_msgs_and_srvs::LearningSampler :response) self_msgs_and_srvs::LearningSamplerResponse)

(defmethod self_msgs_and_srvs::LearningSamplerRequest
  (:response () (instance self_msgs_and_srvs::LearningSamplerResponse :init)))

(setf (get self_msgs_and_srvs::LearningSamplerRequest :md5sum-) "9b3be973a2fd70300d20649e1a983955")
(setf (get self_msgs_and_srvs::LearningSamplerRequest :datatype-) "self_msgs_and_srvs/LearningSamplerRequest")
(setf (get self_msgs_and_srvs::LearningSamplerRequest :definition-)
      "self_msgs_and_srvs/input_point[] input_traj

================================================================================
MSG: self_msgs_and_srvs/input_point
geometry_msgs/Point cur_pos
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
---
self_msgs_and_srvs/output_point[] output_traj


================================================================================
MSG: self_msgs_and_srvs/output_point
geometry_msgs/Point pos_mu
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

(setf (get self_msgs_and_srvs::LearningSamplerResponse :md5sum-) "9b3be973a2fd70300d20649e1a983955")
(setf (get self_msgs_and_srvs::LearningSamplerResponse :datatype-) "self_msgs_and_srvs/LearningSamplerResponse")
(setf (get self_msgs_and_srvs::LearningSamplerResponse :definition-)
      "self_msgs_and_srvs/input_point[] input_traj

================================================================================
MSG: self_msgs_and_srvs/input_point
geometry_msgs/Point cur_pos
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
---
self_msgs_and_srvs/output_point[] output_traj


================================================================================
MSG: self_msgs_and_srvs/output_point
geometry_msgs/Point pos_mu
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



(provide :self_msgs_and_srvs/LearningSampler "9b3be973a2fd70300d20649e1a983955")



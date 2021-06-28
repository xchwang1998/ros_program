;; Auto-generated. Do not edit!


(when (boundp 'ndt_map::NDTMapMsg)
  (if (not (find-package "NDT_MAP"))
    (make-package "NDT_MAP"))
  (shadow 'NDTMapMsg (find-package "NDT_MAP")))
(unless (find-package "NDT_MAP::NDTMAPMSG")
  (make-package "NDT_MAP::NDTMAPMSG"))

(in-package "ROS")
;;//! \htmlinclude NDTMapMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ndt_map::NDTMapMsg
  :super ros::object
  :slots (_header _x_size _y_size _z_size _x_cen _y_cen _z_cen _x_cell_size _y_cell_size _z_cell_size _cells ))

(defmethod ndt_map::NDTMapMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x_size __x_size) 0.0)
    ((:y_size __y_size) 0.0)
    ((:z_size __z_size) 0.0)
    ((:x_cen __x_cen) 0.0)
    ((:y_cen __y_cen) 0.0)
    ((:z_cen __z_cen) 0.0)
    ((:x_cell_size __x_cell_size) 0.0)
    ((:y_cell_size __y_cell_size) 0.0)
    ((:z_cell_size __z_cell_size) 0.0)
    ((:cells __cells) (let (r) (dotimes (i 0) (push (instance ndt_map::NDTCellMsg :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x_size (float __x_size))
   (setq _y_size (float __y_size))
   (setq _z_size (float __z_size))
   (setq _x_cen (float __x_cen))
   (setq _y_cen (float __y_cen))
   (setq _z_cen (float __z_cen))
   (setq _x_cell_size (float __x_cell_size))
   (setq _y_cell_size (float __y_cell_size))
   (setq _z_cell_size (float __z_cell_size))
   (setq _cells __cells)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x_size
   (&optional __x_size)
   (if __x_size (setq _x_size __x_size)) _x_size)
  (:y_size
   (&optional __y_size)
   (if __y_size (setq _y_size __y_size)) _y_size)
  (:z_size
   (&optional __z_size)
   (if __z_size (setq _z_size __z_size)) _z_size)
  (:x_cen
   (&optional __x_cen)
   (if __x_cen (setq _x_cen __x_cen)) _x_cen)
  (:y_cen
   (&optional __y_cen)
   (if __y_cen (setq _y_cen __y_cen)) _y_cen)
  (:z_cen
   (&optional __z_cen)
   (if __z_cen (setq _z_cen __z_cen)) _z_cen)
  (:x_cell_size
   (&optional __x_cell_size)
   (if __x_cell_size (setq _x_cell_size __x_cell_size)) _x_cell_size)
  (:y_cell_size
   (&optional __y_cell_size)
   (if __y_cell_size (setq _y_cell_size __y_cell_size)) _y_cell_size)
  (:z_cell_size
   (&optional __z_cell_size)
   (if __z_cell_size (setq _z_cell_size __z_cell_size)) _z_cell_size)
  (:cells
   (&rest __cells)
   (if (keywordp (car __cells))
       (send* _cells __cells)
     (progn
       (if __cells (setq _cells (car __cells)))
       _cells)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _x_size
    8
    ;; float64 _y_size
    8
    ;; float64 _z_size
    8
    ;; float64 _x_cen
    8
    ;; float64 _y_cen
    8
    ;; float64 _z_cen
    8
    ;; float64 _x_cell_size
    8
    ;; float64 _y_cell_size
    8
    ;; float64 _z_cell_size
    8
    ;; ndt_map/NDTCellMsg[] _cells
    (apply #'+ (send-all _cells :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _x_size
       (sys::poke _x_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_size
       (sys::poke _y_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_size
       (sys::poke _z_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_cen
       (sys::poke _x_cen (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_cen
       (sys::poke _y_cen (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_cen
       (sys::poke _z_cen (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_cell_size
       (sys::poke _x_cell_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_cell_size
       (sys::poke _y_cell_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_cell_size
       (sys::poke _z_cell_size (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; ndt_map/NDTCellMsg[] _cells
     (write-long (length _cells) s)
     (dolist (elem _cells)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _x_size
     (setq _x_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_size
     (setq _y_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_size
     (setq _z_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_cen
     (setq _x_cen (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_cen
     (setq _y_cen (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_cen
     (setq _z_cen (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_cell_size
     (setq _x_cell_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_cell_size
     (setq _y_cell_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_cell_size
     (setq _z_cell_size (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; ndt_map/NDTCellMsg[] _cells
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cells (let (r) (dotimes (i n) (push (instance ndt_map::NDTCellMsg :init) r)) r))
     (dolist (elem- _cells)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ndt_map::NDTMapMsg :md5sum-) "6aa3635c67f9abc249181bdf6529236b")
(setf (get ndt_map::NDTMapMsg :datatype-) "ndt_map/NDTMapMsg")
(setf (get ndt_map::NDTMapMsg :definition-)
      "#In this file we define map message that will be published
Header header          #standard header information
float64 x_size         #in meters
float64 y_size         #in meters
float64 z_size         #in meters
float64 x_cen          #cneter of the map
float64 y_cen          #cneter of the map
float64 z_cen          #cneter of the map
float64 x_cell_size    #cell size
float64 y_cell_size    #cell size
float64 z_cell_size    #cell size

NDTCellMsg[] cells     #cells

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: ndt_map/NDTCellMsg
#In this file we define a sinngle ndt cell message
float64 mean_x       #x coordinate of mean
float64 mean_y       #y coordinate of mean
float64 mean_z       #z coordinate of mean
float64[] cov_matrix #covariance matrix
float64 occupancy    #occupancy
int64 N              #point count
")



(provide :ndt_map/NDTMapMsg "6aa3635c67f9abc249181bdf6529236b")



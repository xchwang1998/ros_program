;; Auto-generated. Do not edit!


(when (boundp 'ndt_map::NDTCellMsg)
  (if (not (find-package "NDT_MAP"))
    (make-package "NDT_MAP"))
  (shadow 'NDTCellMsg (find-package "NDT_MAP")))
(unless (find-package "NDT_MAP::NDTCELLMSG")
  (make-package "NDT_MAP::NDTCELLMSG"))

(in-package "ROS")
;;//! \htmlinclude NDTCellMsg.msg.html


(defclass ndt_map::NDTCellMsg
  :super ros::object
  :slots (_mean_x _mean_y _mean_z _cov_matrix _occupancy _N ))

(defmethod ndt_map::NDTCellMsg
  (:init
   (&key
    ((:mean_x __mean_x) 0.0)
    ((:mean_y __mean_y) 0.0)
    ((:mean_z __mean_z) 0.0)
    ((:cov_matrix __cov_matrix) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:occupancy __occupancy) 0.0)
    ((:N __N) 0)
    )
   (send-super :init)
   (setq _mean_x (float __mean_x))
   (setq _mean_y (float __mean_y))
   (setq _mean_z (float __mean_z))
   (setq _cov_matrix __cov_matrix)
   (setq _occupancy (float __occupancy))
   (setq _N (round __N))
   self)
  (:mean_x
   (&optional __mean_x)
   (if __mean_x (setq _mean_x __mean_x)) _mean_x)
  (:mean_y
   (&optional __mean_y)
   (if __mean_y (setq _mean_y __mean_y)) _mean_y)
  (:mean_z
   (&optional __mean_z)
   (if __mean_z (setq _mean_z __mean_z)) _mean_z)
  (:cov_matrix
   (&optional __cov_matrix)
   (if __cov_matrix (setq _cov_matrix __cov_matrix)) _cov_matrix)
  (:occupancy
   (&optional __occupancy)
   (if __occupancy (setq _occupancy __occupancy)) _occupancy)
  (:N
   (&optional __N)
   (if __N (setq _N __N)) _N)
  (:serialization-length
   ()
   (+
    ;; float64 _mean_x
    8
    ;; float64 _mean_y
    8
    ;; float64 _mean_z
    8
    ;; float64[] _cov_matrix
    (* 8    (length _cov_matrix)) 4
    ;; float64 _occupancy
    8
    ;; int64 _N
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mean_x
       (sys::poke _mean_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mean_y
       (sys::poke _mean_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _mean_z
       (sys::poke _mean_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _cov_matrix
     (write-long (length _cov_matrix) s)
     (dotimes (i (length _cov_matrix))
       (sys::poke (elt _cov_matrix i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _occupancy
       (sys::poke _occupancy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _N
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _N (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _N) (= (length (_N . bv)) 2)) ;; bignum
              (write-long (ash (elt (_N . bv) 0) 0) s)
              (write-long (ash (elt (_N . bv) 1) -1) s))
             ((and (class _N) (= (length (_N . bv)) 1)) ;; big1
              (write-long (elt (_N . bv) 0) s)
              (write-long (if (>= _N 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _N s)(write-long (if (>= _N 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mean_x
     (setq _mean_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mean_y
     (setq _mean_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _mean_z
     (setq _mean_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _cov_matrix
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cov_matrix (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cov_matrix i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _occupancy
     (setq _occupancy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _N
#+(or :alpha :irix6 :x86_64)
      (setf _N (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _N (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ndt_map::NDTCellMsg :md5sum-) "5de462e5aea799b2fcf5b028c0840eb6")
(setf (get ndt_map::NDTCellMsg :datatype-) "ndt_map/NDTCellMsg")
(setf (get ndt_map::NDTCellMsg :definition-)
      "#In this file we define a sinngle ndt cell message
float64 mean_x       #x coordinate of mean
float64 mean_y       #y coordinate of mean
float64 mean_z       #z coordinate of mean
float64[] cov_matrix #covariance matrix
float64 occupancy    #occupancy
int64 N              #point count
")



(provide :ndt_map/NDTCellMsg "5de462e5aea799b2fcf5b028c0840eb6")



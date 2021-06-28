; Auto-generated. Do not edit!


(cl:in-package ndt_map-msg)


;//! \htmlinclude NDTCellMsg.msg.html

(cl:defclass <NDTCellMsg> (roslisp-msg-protocol:ros-message)
  ((mean_x
    :reader mean_x
    :initarg :mean_x
    :type cl:float
    :initform 0.0)
   (mean_y
    :reader mean_y
    :initarg :mean_y
    :type cl:float
    :initform 0.0)
   (mean_z
    :reader mean_z
    :initarg :mean_z
    :type cl:float
    :initform 0.0)
   (cov_matrix
    :reader cov_matrix
    :initarg :cov_matrix
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (occupancy
    :reader occupancy
    :initarg :occupancy
    :type cl:float
    :initform 0.0)
   (N
    :reader N
    :initarg :N
    :type cl:integer
    :initform 0))
)

(cl:defclass NDTCellMsg (<NDTCellMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NDTCellMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NDTCellMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ndt_map-msg:<NDTCellMsg> is deprecated: use ndt_map-msg:NDTCellMsg instead.")))

(cl:ensure-generic-function 'mean_x-val :lambda-list '(m))
(cl:defmethod mean_x-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:mean_x-val is deprecated.  Use ndt_map-msg:mean_x instead.")
  (mean_x m))

(cl:ensure-generic-function 'mean_y-val :lambda-list '(m))
(cl:defmethod mean_y-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:mean_y-val is deprecated.  Use ndt_map-msg:mean_y instead.")
  (mean_y m))

(cl:ensure-generic-function 'mean_z-val :lambda-list '(m))
(cl:defmethod mean_z-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:mean_z-val is deprecated.  Use ndt_map-msg:mean_z instead.")
  (mean_z m))

(cl:ensure-generic-function 'cov_matrix-val :lambda-list '(m))
(cl:defmethod cov_matrix-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:cov_matrix-val is deprecated.  Use ndt_map-msg:cov_matrix instead.")
  (cov_matrix m))

(cl:ensure-generic-function 'occupancy-val :lambda-list '(m))
(cl:defmethod occupancy-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:occupancy-val is deprecated.  Use ndt_map-msg:occupancy instead.")
  (occupancy m))

(cl:ensure-generic-function 'N-val :lambda-list '(m))
(cl:defmethod N-val ((m <NDTCellMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:N-val is deprecated.  Use ndt_map-msg:N instead.")
  (N m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NDTCellMsg>) ostream)
  "Serializes a message object of type '<NDTCellMsg>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mean_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mean_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mean_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cov_matrix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'cov_matrix))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'occupancy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'N)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NDTCellMsg>) istream)
  "Deserializes a message object of type '<NDTCellMsg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_z) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cov_matrix) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cov_matrix)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupancy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'N) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NDTCellMsg>)))
  "Returns string type for a message object of type '<NDTCellMsg>"
  "ndt_map/NDTCellMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NDTCellMsg)))
  "Returns string type for a message object of type 'NDTCellMsg"
  "ndt_map/NDTCellMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NDTCellMsg>)))
  "Returns md5sum for a message object of type '<NDTCellMsg>"
  "5de462e5aea799b2fcf5b028c0840eb6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NDTCellMsg)))
  "Returns md5sum for a message object of type 'NDTCellMsg"
  "5de462e5aea799b2fcf5b028c0840eb6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NDTCellMsg>)))
  "Returns full string definition for message of type '<NDTCellMsg>"
  (cl:format cl:nil "#In this file we define a sinngle ndt cell message~%float64 mean_x       #x coordinate of mean~%float64 mean_y       #y coordinate of mean~%float64 mean_z       #z coordinate of mean~%float64[] cov_matrix #covariance matrix~%float64 occupancy    #occupancy~%int64 N              #point count~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NDTCellMsg)))
  "Returns full string definition for message of type 'NDTCellMsg"
  (cl:format cl:nil "#In this file we define a sinngle ndt cell message~%float64 mean_x       #x coordinate of mean~%float64 mean_y       #y coordinate of mean~%float64 mean_z       #z coordinate of mean~%float64[] cov_matrix #covariance matrix~%float64 occupancy    #occupancy~%int64 N              #point count~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NDTCellMsg>))
  (cl:+ 0
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cov_matrix) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NDTCellMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'NDTCellMsg
    (cl:cons ':mean_x (mean_x msg))
    (cl:cons ':mean_y (mean_y msg))
    (cl:cons ':mean_z (mean_z msg))
    (cl:cons ':cov_matrix (cov_matrix msg))
    (cl:cons ':occupancy (occupancy msg))
    (cl:cons ':N (N msg))
))

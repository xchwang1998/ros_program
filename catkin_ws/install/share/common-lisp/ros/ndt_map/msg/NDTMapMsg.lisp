; Auto-generated. Do not edit!


(cl:in-package ndt_map-msg)


;//! \htmlinclude NDTMapMsg.msg.html

(cl:defclass <NDTMapMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x_size
    :reader x_size
    :initarg :x_size
    :type cl:float
    :initform 0.0)
   (y_size
    :reader y_size
    :initarg :y_size
    :type cl:float
    :initform 0.0)
   (z_size
    :reader z_size
    :initarg :z_size
    :type cl:float
    :initform 0.0)
   (x_cen
    :reader x_cen
    :initarg :x_cen
    :type cl:float
    :initform 0.0)
   (y_cen
    :reader y_cen
    :initarg :y_cen
    :type cl:float
    :initform 0.0)
   (z_cen
    :reader z_cen
    :initarg :z_cen
    :type cl:float
    :initform 0.0)
   (x_cell_size
    :reader x_cell_size
    :initarg :x_cell_size
    :type cl:float
    :initform 0.0)
   (y_cell_size
    :reader y_cell_size
    :initarg :y_cell_size
    :type cl:float
    :initform 0.0)
   (z_cell_size
    :reader z_cell_size
    :initarg :z_cell_size
    :type cl:float
    :initform 0.0)
   (cells
    :reader cells
    :initarg :cells
    :type (cl:vector ndt_map-msg:NDTCellMsg)
   :initform (cl:make-array 0 :element-type 'ndt_map-msg:NDTCellMsg :initial-element (cl:make-instance 'ndt_map-msg:NDTCellMsg))))
)

(cl:defclass NDTMapMsg (<NDTMapMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NDTMapMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NDTMapMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ndt_map-msg:<NDTMapMsg> is deprecated: use ndt_map-msg:NDTMapMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:header-val is deprecated.  Use ndt_map-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x_size-val :lambda-list '(m))
(cl:defmethod x_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:x_size-val is deprecated.  Use ndt_map-msg:x_size instead.")
  (x_size m))

(cl:ensure-generic-function 'y_size-val :lambda-list '(m))
(cl:defmethod y_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:y_size-val is deprecated.  Use ndt_map-msg:y_size instead.")
  (y_size m))

(cl:ensure-generic-function 'z_size-val :lambda-list '(m))
(cl:defmethod z_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:z_size-val is deprecated.  Use ndt_map-msg:z_size instead.")
  (z_size m))

(cl:ensure-generic-function 'x_cen-val :lambda-list '(m))
(cl:defmethod x_cen-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:x_cen-val is deprecated.  Use ndt_map-msg:x_cen instead.")
  (x_cen m))

(cl:ensure-generic-function 'y_cen-val :lambda-list '(m))
(cl:defmethod y_cen-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:y_cen-val is deprecated.  Use ndt_map-msg:y_cen instead.")
  (y_cen m))

(cl:ensure-generic-function 'z_cen-val :lambda-list '(m))
(cl:defmethod z_cen-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:z_cen-val is deprecated.  Use ndt_map-msg:z_cen instead.")
  (z_cen m))

(cl:ensure-generic-function 'x_cell_size-val :lambda-list '(m))
(cl:defmethod x_cell_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:x_cell_size-val is deprecated.  Use ndt_map-msg:x_cell_size instead.")
  (x_cell_size m))

(cl:ensure-generic-function 'y_cell_size-val :lambda-list '(m))
(cl:defmethod y_cell_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:y_cell_size-val is deprecated.  Use ndt_map-msg:y_cell_size instead.")
  (y_cell_size m))

(cl:ensure-generic-function 'z_cell_size-val :lambda-list '(m))
(cl:defmethod z_cell_size-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:z_cell_size-val is deprecated.  Use ndt_map-msg:z_cell_size instead.")
  (z_cell_size m))

(cl:ensure-generic-function 'cells-val :lambda-list '(m))
(cl:defmethod cells-val ((m <NDTMapMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ndt_map-msg:cells-val is deprecated.  Use ndt_map-msg:cells instead.")
  (cells m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NDTMapMsg>) ostream)
  "Serializes a message object of type '<NDTMapMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_cen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_cen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_cen))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x_cell_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y_cell_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z_cell_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cells))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cells))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NDTMapMsg>) istream)
  "Deserializes a message object of type '<NDTMapMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_cen) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_cen) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_cen) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x_cell_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y_cell_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z_cell_size) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cells) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cells)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ndt_map-msg:NDTCellMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NDTMapMsg>)))
  "Returns string type for a message object of type '<NDTMapMsg>"
  "ndt_map/NDTMapMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NDTMapMsg)))
  "Returns string type for a message object of type 'NDTMapMsg"
  "ndt_map/NDTMapMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NDTMapMsg>)))
  "Returns md5sum for a message object of type '<NDTMapMsg>"
  "6aa3635c67f9abc249181bdf6529236b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NDTMapMsg)))
  "Returns md5sum for a message object of type 'NDTMapMsg"
  "6aa3635c67f9abc249181bdf6529236b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NDTMapMsg>)))
  "Returns full string definition for message of type '<NDTMapMsg>"
  (cl:format cl:nil "#In this file we define map message that will be published~%Header header          #standard header information~%float64 x_size         #in meters~%float64 y_size         #in meters~%float64 z_size         #in meters~%float64 x_cen          #cneter of the map~%float64 y_cen          #cneter of the map~%float64 z_cen          #cneter of the map~%float64 x_cell_size    #cell size~%float64 y_cell_size    #cell size~%float64 z_cell_size    #cell size~%~%NDTCellMsg[] cells     #cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ndt_map/NDTCellMsg~%#In this file we define a sinngle ndt cell message~%float64 mean_x       #x coordinate of mean~%float64 mean_y       #y coordinate of mean~%float64 mean_z       #z coordinate of mean~%float64[] cov_matrix #covariance matrix~%float64 occupancy    #occupancy~%int64 N              #point count~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NDTMapMsg)))
  "Returns full string definition for message of type 'NDTMapMsg"
  (cl:format cl:nil "#In this file we define map message that will be published~%Header header          #standard header information~%float64 x_size         #in meters~%float64 y_size         #in meters~%float64 z_size         #in meters~%float64 x_cen          #cneter of the map~%float64 y_cen          #cneter of the map~%float64 z_cen          #cneter of the map~%float64 x_cell_size    #cell size~%float64 y_cell_size    #cell size~%float64 z_cell_size    #cell size~%~%NDTCellMsg[] cells     #cells~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: ndt_map/NDTCellMsg~%#In this file we define a sinngle ndt cell message~%float64 mean_x       #x coordinate of mean~%float64 mean_y       #y coordinate of mean~%float64 mean_z       #z coordinate of mean~%float64[] cov_matrix #covariance matrix~%float64 occupancy    #occupancy~%int64 N              #point count~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NDTMapMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
     8
     8
     8
     8
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cells) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NDTMapMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'NDTMapMsg
    (cl:cons ':header (header msg))
    (cl:cons ':x_size (x_size msg))
    (cl:cons ':y_size (y_size msg))
    (cl:cons ':z_size (z_size msg))
    (cl:cons ':x_cen (x_cen msg))
    (cl:cons ':y_cen (y_cen msg))
    (cl:cons ':z_cen (z_cen msg))
    (cl:cons ':x_cell_size (x_cell_size msg))
    (cl:cons ':y_cell_size (y_cell_size msg))
    (cl:cons ':z_cell_size (z_cell_size msg))
    (cl:cons ':cells (cells msg))
))

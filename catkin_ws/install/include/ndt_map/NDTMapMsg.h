// Generated by gencpp from file ndt_map/NDTMapMsg.msg
// DO NOT EDIT!


#ifndef NDT_MAP_MESSAGE_NDTMAPMSG_H
#define NDT_MAP_MESSAGE_NDTMAPMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ndt_map/NDTCellMsg.h>

namespace ndt_map
{
template <class ContainerAllocator>
struct NDTMapMsg_
{
  typedef NDTMapMsg_<ContainerAllocator> Type;

  NDTMapMsg_()
    : header()
    , x_size(0.0)
    , y_size(0.0)
    , z_size(0.0)
    , x_cen(0.0)
    , y_cen(0.0)
    , z_cen(0.0)
    , x_cell_size(0.0)
    , y_cell_size(0.0)
    , z_cell_size(0.0)
    , cells()  {
    }
  NDTMapMsg_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , x_size(0.0)
    , y_size(0.0)
    , z_size(0.0)
    , x_cen(0.0)
    , y_cen(0.0)
    , z_cen(0.0)
    , x_cell_size(0.0)
    , y_cell_size(0.0)
    , z_cell_size(0.0)
    , cells(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef double _x_size_type;
  _x_size_type x_size;

   typedef double _y_size_type;
  _y_size_type y_size;

   typedef double _z_size_type;
  _z_size_type z_size;

   typedef double _x_cen_type;
  _x_cen_type x_cen;

   typedef double _y_cen_type;
  _y_cen_type y_cen;

   typedef double _z_cen_type;
  _z_cen_type z_cen;

   typedef double _x_cell_size_type;
  _x_cell_size_type x_cell_size;

   typedef double _y_cell_size_type;
  _y_cell_size_type y_cell_size;

   typedef double _z_cell_size_type;
  _z_cell_size_type z_cell_size;

   typedef std::vector< ::ndt_map::NDTCellMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ndt_map::NDTCellMsg_<ContainerAllocator> >::other >  _cells_type;
  _cells_type cells;





  typedef boost::shared_ptr< ::ndt_map::NDTMapMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ndt_map::NDTMapMsg_<ContainerAllocator> const> ConstPtr;

}; // struct NDTMapMsg_

typedef ::ndt_map::NDTMapMsg_<std::allocator<void> > NDTMapMsg;

typedef boost::shared_ptr< ::ndt_map::NDTMapMsg > NDTMapMsgPtr;
typedef boost::shared_ptr< ::ndt_map::NDTMapMsg const> NDTMapMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ndt_map::NDTMapMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ndt_map::NDTMapMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::ndt_map::NDTMapMsg_<ContainerAllocator1> & lhs, const ::ndt_map::NDTMapMsg_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.x_size == rhs.x_size &&
    lhs.y_size == rhs.y_size &&
    lhs.z_size == rhs.z_size &&
    lhs.x_cen == rhs.x_cen &&
    lhs.y_cen == rhs.y_cen &&
    lhs.z_cen == rhs.z_cen &&
    lhs.x_cell_size == rhs.x_cell_size &&
    lhs.y_cell_size == rhs.y_cell_size &&
    lhs.z_cell_size == rhs.z_cell_size &&
    lhs.cells == rhs.cells;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::ndt_map::NDTMapMsg_<ContainerAllocator1> & lhs, const ::ndt_map::NDTMapMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace ndt_map

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ndt_map::NDTMapMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ndt_map::NDTMapMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ndt_map::NDTMapMsg_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6aa3635c67f9abc249181bdf6529236b";
  }

  static const char* value(const ::ndt_map::NDTMapMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6aa3635c67f9abc2ULL;
  static const uint64_t static_value2 = 0x49181bdf6529236bULL;
};

template<class ContainerAllocator>
struct DataType< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ndt_map/NDTMapMsg";
  }

  static const char* value(const ::ndt_map::NDTMapMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#In this file we define map message that will be published\n"
"Header header          #standard header information\n"
"float64 x_size         #in meters\n"
"float64 y_size         #in meters\n"
"float64 z_size         #in meters\n"
"float64 x_cen          #cneter of the map\n"
"float64 y_cen          #cneter of the map\n"
"float64 z_cen          #cneter of the map\n"
"float64 x_cell_size    #cell size\n"
"float64 y_cell_size    #cell size\n"
"float64 z_cell_size    #cell size\n"
"\n"
"NDTCellMsg[] cells     #cells\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: ndt_map/NDTCellMsg\n"
"#In this file we define a sinngle ndt cell message\n"
"float64 mean_x       #x coordinate of mean\n"
"float64 mean_y       #y coordinate of mean\n"
"float64 mean_z       #z coordinate of mean\n"
"float64[] cov_matrix #covariance matrix\n"
"float64 occupancy    #occupancy\n"
"int64 N              #point count\n"
;
  }

  static const char* value(const ::ndt_map::NDTMapMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.x_size);
      stream.next(m.y_size);
      stream.next(m.z_size);
      stream.next(m.x_cen);
      stream.next(m.y_cen);
      stream.next(m.z_cen);
      stream.next(m.x_cell_size);
      stream.next(m.y_cell_size);
      stream.next(m.z_cell_size);
      stream.next(m.cells);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct NDTMapMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ndt_map::NDTMapMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ndt_map::NDTMapMsg_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x_size: ";
    Printer<double>::stream(s, indent + "  ", v.x_size);
    s << indent << "y_size: ";
    Printer<double>::stream(s, indent + "  ", v.y_size);
    s << indent << "z_size: ";
    Printer<double>::stream(s, indent + "  ", v.z_size);
    s << indent << "x_cen: ";
    Printer<double>::stream(s, indent + "  ", v.x_cen);
    s << indent << "y_cen: ";
    Printer<double>::stream(s, indent + "  ", v.y_cen);
    s << indent << "z_cen: ";
    Printer<double>::stream(s, indent + "  ", v.z_cen);
    s << indent << "x_cell_size: ";
    Printer<double>::stream(s, indent + "  ", v.x_cell_size);
    s << indent << "y_cell_size: ";
    Printer<double>::stream(s, indent + "  ", v.y_cell_size);
    s << indent << "z_cell_size: ";
    Printer<double>::stream(s, indent + "  ", v.z_cell_size);
    s << indent << "cells[]" << std::endl;
    for (size_t i = 0; i < v.cells.size(); ++i)
    {
      s << indent << "  cells[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ndt_map::NDTCellMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.cells[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // NDT_MAP_MESSAGE_NDTMAPMSG_H

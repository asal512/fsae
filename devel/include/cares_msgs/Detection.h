// Generated by gencpp from file cares_msgs/Detection.msg
// DO NOT EDIT!


#ifndef CARES_MSGS_MESSAGE_DETECTION_H
#define CARES_MSGS_MESSAGE_DETECTION_H

#include <ros/service_traits.h>


#include <cares_msgs/DetectionRequest.h>
#include <cares_msgs/DetectionResponse.h>


namespace cares_msgs
{

struct Detection
{

typedef DetectionRequest Request;
typedef DetectionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Detection
} // namespace cares_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cares_msgs::Detection > {
  static const char* value()
  {
    return "5d8ead10cc464e486b8b27267419b3fb";
  }

  static const char* value(const ::cares_msgs::Detection&) { return value(); }
};

template<>
struct DataType< ::cares_msgs::Detection > {
  static const char* value()
  {
    return "cares_msgs/Detection";
  }

  static const char* value(const ::cares_msgs::Detection&) { return value(); }
};


// service_traits::MD5Sum< ::cares_msgs::DetectionRequest> should match
// service_traits::MD5Sum< ::cares_msgs::Detection >
template<>
struct MD5Sum< ::cares_msgs::DetectionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cares_msgs::Detection >::value();
  }
  static const char* value(const ::cares_msgs::DetectionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cares_msgs::DetectionRequest> should match
// service_traits::DataType< ::cares_msgs::Detection >
template<>
struct DataType< ::cares_msgs::DetectionRequest>
{
  static const char* value()
  {
    return DataType< ::cares_msgs::Detection >::value();
  }
  static const char* value(const ::cares_msgs::DetectionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cares_msgs::DetectionResponse> should match
// service_traits::MD5Sum< ::cares_msgs::Detection >
template<>
struct MD5Sum< ::cares_msgs::DetectionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cares_msgs::Detection >::value();
  }
  static const char* value(const ::cares_msgs::DetectionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cares_msgs::DetectionResponse> should match
// service_traits::DataType< ::cares_msgs::Detection >
template<>
struct DataType< ::cares_msgs::DetectionResponse>
{
  static const char* value()
  {
    return DataType< ::cares_msgs::Detection >::value();
  }
  static const char* value(const ::cares_msgs::DetectionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CARES_MSGS_MESSAGE_DETECTION_H

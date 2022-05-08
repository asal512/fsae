# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cares_msgs: 10 messages, 3 services")

set(MSG_I_FLAGS "-Icares_msgs:/home/aakaash/fsae/src/cares_msgs/msg;-Icares_msgs:/home/aakaash/fsae/devel/share/cares_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cares_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" "sensor_msgs/RegionOfInterest:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" "sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" "std_msgs/String:cares_msgs/PlatformGoalActionResult:cares_msgs/PlatformGoalResult:actionlib_msgs/GoalStatus:cares_msgs/PlatformGoalActionGoal:std_msgs/Header:cares_msgs/PlatformGoalActionFeedback:geometry_msgs/PoseStamped:geometry_msgs/Point:cares_msgs/PlatformGoalGoal:geometry_msgs/Quaternion:geometry_msgs/Pose:cares_msgs/PlatformGoalFeedback:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" "std_msgs/String:std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:cares_msgs/PlatformGoalGoal:geometry_msgs/Quaternion:geometry_msgs/Pose:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" "actionlib_msgs/GoalStatus:cares_msgs/PlatformGoalResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:cares_msgs/PlatformGoalFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" "std_msgs/Header:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/String:geometry_msgs/Pose:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" ""
)

get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" ""
)

get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" "geometry_msgs/Transform:sensor_msgs/CameraInfo:cares_msgs/StereoCameraInfo:sensor_msgs/Image:geometry_msgs/Vector3:geometry_msgs/Quaternion:sensor_msgs/RegionOfInterest:geometry_msgs/TransformStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" "sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:cares_msgs/StereoCameraInfo:std_msgs/Header"
)

get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_custom_target(_cares_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cares_msgs" "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" "sensor_msgs/Image:cares_msgs/InstanceMasks:sensor_msgs/RegionOfInterest:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_msg_cpp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_srv_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)
_generate_srv_cpp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_cpp(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cares_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_cpp _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_gencpp)
add_dependencies(cares_msgs_gencpp cares_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_msg_eus(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_srv_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)
_generate_srv_eus(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_eus(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cares_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_eus _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_geneus)
add_dependencies(cares_msgs_geneus cares_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_msg_lisp(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_srv_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)
_generate_srv_lisp(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_lisp(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cares_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_lisp _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_genlisp)
add_dependencies(cares_msgs_genlisp cares_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_msg_nodejs(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_srv_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)
_generate_srv_nodejs(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_nodejs(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cares_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_nodejs _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_gennodejs)
add_dependencies(cares_msgs_gennodejs cares_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_msg_py(cares_msgs
  "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)

### Generating Services
_generate_srv_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_srv_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)
_generate_srv_py(cares_msgs
  "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
)

### Generating Module File
_generate_module_py(cares_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cares_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cares_msgs_generate_messages cares_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv" NAME_WE)
add_dependencies(cares_msgs_generate_messages_py _cares_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cares_msgs_genpy)
add_dependencies(cares_msgs_genpy cares_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cares_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cares_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(cares_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cares_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(cares_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cares_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(cares_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cares_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(cares_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cares_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(cares_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()

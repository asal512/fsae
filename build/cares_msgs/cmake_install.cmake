# Install script for directory: /home/aakaash/fsae/src/cares_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/aakaash/fsae/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/aakaash/fsae/src/cares_msgs/msg/ArucoMarkers.msg"
    "/home/aakaash/fsae/src/cares_msgs/msg/InstanceMasks.msg"
    "/home/aakaash/fsae/src/cares_msgs/msg/StereoCameraInfo.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/srv" TYPE FILE FILES
    "/home/aakaash/fsae/src/cares_msgs/srv/ArucoDetect.srv"
    "/home/aakaash/fsae/src/cares_msgs/srv/CalibrationService.srv"
    "/home/aakaash/fsae/src/cares_msgs/srv/Detection.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/action" TYPE FILE FILES "/home/aakaash/fsae/src/cares_msgs/action/PlatformGoal.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/msg" TYPE FILE FILES
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalAction.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionGoal.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionResult.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalActionFeedback.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalGoal.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalResult.msg"
    "/home/aakaash/fsae/devel/share/cares_msgs/msg/PlatformGoalFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES "/home/aakaash/fsae/build/cares_msgs/catkin_generated/installspace/cares_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/aakaash/fsae/devel/include/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/aakaash/fsae/devel/share/roseus/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/aakaash/fsae/devel/share/common-lisp/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/aakaash/fsae/devel/share/gennodejs/ros/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/aakaash/fsae/devel/lib/python3/dist-packages/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/aakaash/fsae/devel/lib/python3/dist-packages/cares_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/aakaash/fsae/build/cares_msgs/catkin_generated/installspace/cares_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES "/home/aakaash/fsae/build/cares_msgs/catkin_generated/installspace/cares_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs/cmake" TYPE FILE FILES
    "/home/aakaash/fsae/build/cares_msgs/catkin_generated/installspace/cares_msgsConfig.cmake"
    "/home/aakaash/fsae/build/cares_msgs/catkin_generated/installspace/cares_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cares_msgs" TYPE FILE FILES "/home/aakaash/fsae/src/cares_msgs/package.xml")
endif()


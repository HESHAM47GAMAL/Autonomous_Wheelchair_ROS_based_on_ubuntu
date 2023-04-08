# Install script for directory: /home/heshamgamal/catkin_ws_1/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/heshamgamal/catkin_ws_1/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE PROGRAM FILES "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE PROGRAM FILES "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/setup.bash;/home/heshamgamal/catkin_ws_1/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE FILE FILES
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/setup.bash"
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/setup.sh;/home/heshamgamal/catkin_ws_1/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE FILE FILES
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/setup.sh"
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/setup.zsh;/home/heshamgamal/catkin_ws_1/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE FILE FILES
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/setup.zsh"
    "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/heshamgamal/catkin_ws_1/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/heshamgamal/catkin_ws_1/install" TYPE FILE FILES "/home/heshamgamal/catkin_ws_1/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/heshamgamal/catkin_ws_1/build/gtest/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/freenect_stack/freenect_launch/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/freenect_stack/freenect_stack/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/navigation/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_arduino/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_chibios/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_mbed/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_msgs/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_python/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_tivac/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_vex_cortex/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_vex_v5/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_xbee/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_client/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/gui_slider/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/mmmros/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/mobile_robot/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/map_server/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_server/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/depthimage_to_laserscan/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/freenect_stack/freenect_camera/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rgbd_launch/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/differential_drive/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_embeddedlinux/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_test/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/rosserial/rosserial_windows/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/amcl/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/learning_tf/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/my_robot_controller/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/nav_core/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/navfn/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/global_planner/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/navigation/move_base/cmake_install.cmake")
  include("/home/heshamgamal/catkin_ws_1/build/mmm_kinect/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/heshamgamal/catkin_ws_1/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

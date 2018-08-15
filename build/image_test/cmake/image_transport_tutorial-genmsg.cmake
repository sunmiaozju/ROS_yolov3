# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "image_transport_tutorial: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iimage_transport_tutorial:/home/sunmiao/projects/catkin_workspace/src/image_test/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(image_transport_tutorial_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_custom_target(_image_transport_tutorial_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "image_transport_tutorial" "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(image_transport_tutorial
  "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_cpp(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(image_transport_tutorial_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_dependencies(image_transport_tutorial_generate_messages_cpp _image_transport_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_transport_tutorial_gencpp)
add_dependencies(image_transport_tutorial_gencpp image_transport_tutorial_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(image_transport_tutorial
  "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_eus(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(image_transport_tutorial_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_dependencies(image_transport_tutorial_generate_messages_eus _image_transport_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_transport_tutorial_geneus)
add_dependencies(image_transport_tutorial_geneus image_transport_tutorial_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(image_transport_tutorial
  "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_lisp(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(image_transport_tutorial_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_dependencies(image_transport_tutorial_generate_messages_lisp _image_transport_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_transport_tutorial_genlisp)
add_dependencies(image_transport_tutorial_genlisp image_transport_tutorial_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(image_transport_tutorial
  "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_nodejs(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(image_transport_tutorial_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_dependencies(image_transport_tutorial_generate_messages_nodejs _image_transport_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_transport_tutorial_gennodejs)
add_dependencies(image_transport_tutorial_gennodejs image_transport_tutorial_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(image_transport_tutorial
  "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
)

### Generating Services

### Generating Module File
_generate_module_py(image_transport_tutorial
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(image_transport_tutorial_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(image_transport_tutorial_generate_messages image_transport_tutorial_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/sunmiao/projects/catkin_workspace/src/image_test/msg/ResizedImage.msg" NAME_WE)
add_dependencies(image_transport_tutorial_generate_messages_py _image_transport_tutorial_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(image_transport_tutorial_genpy)
add_dependencies(image_transport_tutorial_genpy image_transport_tutorial_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS image_transport_tutorial_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(image_transport_tutorial_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(image_transport_tutorial_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(image_transport_tutorial_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_transport_tutorial)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(image_transport_tutorial_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/image_transport_tutorial
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(image_transport_tutorial_generate_messages_py sensor_msgs_generate_messages_py)
endif()

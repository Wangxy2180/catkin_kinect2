# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "obj_detected: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iobj_detected:/home/free/catkin_kinect2/src/obj_detected/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(obj_detected_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_custom_target(_obj_detected_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "obj_detected" "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(obj_detected
  "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obj_detected
)

### Generating Services

### Generating Module File
_generate_module_cpp(obj_detected
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obj_detected
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(obj_detected_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(obj_detected_generate_messages obj_detected_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_dependencies(obj_detected_generate_messages_cpp _obj_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obj_detected_gencpp)
add_dependencies(obj_detected_gencpp obj_detected_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obj_detected_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(obj_detected
  "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obj_detected
)

### Generating Services

### Generating Module File
_generate_module_eus(obj_detected
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obj_detected
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(obj_detected_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(obj_detected_generate_messages obj_detected_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_dependencies(obj_detected_generate_messages_eus _obj_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obj_detected_geneus)
add_dependencies(obj_detected_geneus obj_detected_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obj_detected_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(obj_detected
  "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obj_detected
)

### Generating Services

### Generating Module File
_generate_module_lisp(obj_detected
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obj_detected
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(obj_detected_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(obj_detected_generate_messages obj_detected_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_dependencies(obj_detected_generate_messages_lisp _obj_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obj_detected_genlisp)
add_dependencies(obj_detected_genlisp obj_detected_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obj_detected_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(obj_detected
  "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obj_detected
)

### Generating Services

### Generating Module File
_generate_module_nodejs(obj_detected
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obj_detected
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(obj_detected_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(obj_detected_generate_messages obj_detected_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_dependencies(obj_detected_generate_messages_nodejs _obj_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obj_detected_gennodejs)
add_dependencies(obj_detected_gennodejs obj_detected_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obj_detected_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(obj_detected
  "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obj_detected
)

### Generating Services

### Generating Module File
_generate_module_py(obj_detected
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obj_detected
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(obj_detected_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(obj_detected_generate_messages obj_detected_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/free/catkin_kinect2/src/obj_detected/msg/ball_pose.msg" NAME_WE)
add_dependencies(obj_detected_generate_messages_py _obj_detected_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(obj_detected_genpy)
add_dependencies(obj_detected_genpy obj_detected_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS obj_detected_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obj_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/obj_detected
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(obj_detected_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obj_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/obj_detected
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(obj_detected_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obj_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/obj_detected
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(obj_detected_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obj_detected)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/obj_detected
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(obj_detected_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obj_detected)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obj_detected\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/obj_detected
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(obj_detected_generate_messages_py std_msgs_generate_messages_py)
endif()

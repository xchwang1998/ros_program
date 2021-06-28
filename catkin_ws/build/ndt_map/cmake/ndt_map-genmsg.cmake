# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ndt_map: 2 messages, 0 services")

set(MSG_I_FLAGS "-Indt_map:/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ndt_map_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_custom_target(_ndt_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ndt_map" "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" ""
)

get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_custom_target(_ndt_map_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ndt_map" "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" "ndt_map/NDTCellMsg:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ndt_map
)
_generate_msg_cpp(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ndt_map
)

### Generating Services

### Generating Module File
_generate_module_cpp(ndt_map
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ndt_map
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ndt_map_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ndt_map_generate_messages ndt_map_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_cpp _ndt_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_cpp _ndt_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ndt_map_gencpp)
add_dependencies(ndt_map_gencpp ndt_map_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ndt_map_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ndt_map
)
_generate_msg_eus(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ndt_map
)

### Generating Services

### Generating Module File
_generate_module_eus(ndt_map
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ndt_map
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ndt_map_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ndt_map_generate_messages ndt_map_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_eus _ndt_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_eus _ndt_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ndt_map_geneus)
add_dependencies(ndt_map_geneus ndt_map_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ndt_map_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ndt_map
)
_generate_msg_lisp(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ndt_map
)

### Generating Services

### Generating Module File
_generate_module_lisp(ndt_map
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ndt_map
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ndt_map_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ndt_map_generate_messages ndt_map_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_lisp _ndt_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_lisp _ndt_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ndt_map_genlisp)
add_dependencies(ndt_map_genlisp ndt_map_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ndt_map_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ndt_map
)
_generate_msg_nodejs(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ndt_map
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ndt_map
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ndt_map
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ndt_map_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ndt_map_generate_messages ndt_map_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_nodejs _ndt_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_nodejs _ndt_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ndt_map_gennodejs)
add_dependencies(ndt_map_gennodejs ndt_map_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ndt_map_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map
)
_generate_msg_py(ndt_map
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map
)

### Generating Services

### Generating Module File
_generate_module_py(ndt_map
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ndt_map_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ndt_map_generate_messages ndt_map_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTCellMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_py _ndt_map_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xiaochen/workspace/catkin_ws/src/ndt_map/msg/NDTMapMsg.msg" NAME_WE)
add_dependencies(ndt_map_generate_messages_py _ndt_map_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ndt_map_genpy)
add_dependencies(ndt_map_genpy ndt_map_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ndt_map_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ndt_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ndt_map
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ndt_map_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ndt_map_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ndt_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ndt_map
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ndt_map_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ndt_map_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ndt_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ndt_map
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ndt_map_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ndt_map_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ndt_map)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ndt_map
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ndt_map_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ndt_map_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ndt_map
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ndt_map_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ndt_map_generate_messages_py std_msgs_generate_messages_py)
endif()

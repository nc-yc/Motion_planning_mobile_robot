# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "self_msgs_and_srvs: 2 messages, 2 services")

set(MSG_I_FLAGS "-Iself_msgs_and_srvs:/home/zyc/hw3/src/self_msgs_and_srvs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(self_msgs_and_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_custom_target(_self_msgs_and_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_msgs_and_srvs" "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_custom_target(_self_msgs_and_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_msgs_and_srvs" "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" ""
)

get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_custom_target(_self_msgs_and_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_msgs_and_srvs" "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" "self_msgs_and_srvs/input_point:self_msgs_and_srvs/output_point:geometry_msgs/Point"
)

get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_custom_target(_self_msgs_and_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "self_msgs_and_srvs" "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_msg_cpp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Services
_generate_srv_cpp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_srv_cpp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv"
  "${MSG_I_FLAGS}"
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg;/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Module File
_generate_module_cpp(self_msgs_and_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(self_msgs_and_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(self_msgs_and_srvs_generate_messages self_msgs_and_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_cpp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_cpp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_cpp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_cpp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_msgs_and_srvs_gencpp)
add_dependencies(self_msgs_and_srvs_gencpp self_msgs_and_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_msgs_and_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_msg_eus(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Services
_generate_srv_eus(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_srv_eus(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv"
  "${MSG_I_FLAGS}"
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg;/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Module File
_generate_module_eus(self_msgs_and_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(self_msgs_and_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(self_msgs_and_srvs_generate_messages self_msgs_and_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_eus _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_eus _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_eus _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_eus _self_msgs_and_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_msgs_and_srvs_geneus)
add_dependencies(self_msgs_and_srvs_geneus self_msgs_and_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_msgs_and_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_msg_lisp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Services
_generate_srv_lisp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_srv_lisp(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv"
  "${MSG_I_FLAGS}"
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg;/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Module File
_generate_module_lisp(self_msgs_and_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(self_msgs_and_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(self_msgs_and_srvs_generate_messages self_msgs_and_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_lisp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_lisp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_lisp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_lisp _self_msgs_and_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_msgs_and_srvs_genlisp)
add_dependencies(self_msgs_and_srvs_genlisp self_msgs_and_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_msgs_and_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_msg_nodejs(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Services
_generate_srv_nodejs(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_srv_nodejs(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv"
  "${MSG_I_FLAGS}"
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg;/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Module File
_generate_module_nodejs(self_msgs_and_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(self_msgs_and_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(self_msgs_and_srvs_generate_messages self_msgs_and_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_nodejs _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_nodejs _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_nodejs _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_nodejs _self_msgs_and_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_msgs_and_srvs_gennodejs)
add_dependencies(self_msgs_and_srvs_gennodejs self_msgs_and_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_msgs_and_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_msg_py(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Services
_generate_srv_py(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
)
_generate_srv_py(self_msgs_and_srvs
  "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv"
  "${MSG_I_FLAGS}"
  "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg;/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
)

### Generating Module File
_generate_module_py(self_msgs_and_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(self_msgs_and_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(self_msgs_and_srvs_generate_messages self_msgs_and_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/output_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_py _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/GlbObsRcv.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_py _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/srv/LearningSampler.srv" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_py _self_msgs_and_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/zyc/hw3/src/self_msgs_and_srvs/msg/input_point.msg" NAME_WE)
add_dependencies(self_msgs_and_srvs_generate_messages_py _self_msgs_and_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(self_msgs_and_srvs_genpy)
add_dependencies(self_msgs_and_srvs_genpy self_msgs_and_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS self_msgs_and_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/self_msgs_and_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(self_msgs_and_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(self_msgs_and_srvs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/self_msgs_and_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(self_msgs_and_srvs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(self_msgs_and_srvs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/self_msgs_and_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(self_msgs_and_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(self_msgs_and_srvs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/self_msgs_and_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(self_msgs_and_srvs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(self_msgs_and_srvs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/self_msgs_and_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(self_msgs_and_srvs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(self_msgs_and_srvs_generate_messages_py geometry_msgs_generate_messages_py)
endif()

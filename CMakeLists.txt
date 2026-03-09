cmake_minimum_required(VERSION 3.16)
project(osqp-cpp_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

set(osqp-cpp_INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}/osqp-cpp_install)

ExternalProject_Add(osqp-cpp_ext
  GIT_REPOSITORY https://github.com/google/osqp-cpp
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${osqp-cpp_INSTALL_DIR} -DCMAKE_BUILD_TYPE=Release
)

install(
  DIRECTORY ${osqp-cpp_INSTALL_DIR}/include/
  DESTINATION include
)

install(
  DIRECTORY ${osqp-cpp_INSTALL_DIR}/lib/
  DESTINATION lib
)

#ament_export_include_directories(include)
#ament_export_libraries(osqp-cpp)

ament_package(CONFIG_EXTRAS "osqp-cpp_vendor-extras.cmake")

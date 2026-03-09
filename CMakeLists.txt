cmake_minimum_required(VERSION 3.16)
project(osqp-cpp_vendor)

find_package(ament_cmake REQUIRED)

include(ExternalProject)

ExternalProject_Add(osqp-cpp
  GIT_REPOSITORY https://github.com/google/osqp-cpp
  CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX} -DCMAKE_BUILD_TYPE=Release
)

install(
  DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/osqp-cpp-prefix/src/osqp-cpp/include/
  DESTINATION include
)

install(
  FILES ${CMAKE_CURRENT_BINARY_DIR}/osqp-cpp-prefix/src/osqp-cpp-build/libosqp-cpp.a
  DESTINATION lib
)

ament_package(CONFIG_EXTRAS "osqp-cpp_vendor-extras.cmake")

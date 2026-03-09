find_package(Eigen3 REQUIRED)

add_library(osqp SHARED IMPORTED)
set_target_properties(osqp PROPERTIES
  IMPORTED_LOCATION
    "${osqp-cpp_vendor_DIR}/../../../lib/libosqp.so"
  INTERFACE_INCLUDE_DIRECTORIES
    "${osqp-cpp_vendor_DIR}/../../../include"
)

add_library(qdldl SHARED IMPORTED)
set_target_properties(qdldl PROPERTIES
  IMPORTED_LOCATION
    "${osqp-cpp_vendor_DIR}/../../../lib/libqdldl.so"
  INTERFACE_INCLUDE_DIRECTORIES
    "${osqp-cpp_vendor_DIR}/../../../include"
)

add_library(osqp-cpp INTERFACE IMPORTED)
target_link_libraries(osqp-cpp
  INTERFACE
  osqp
  qdldl
  Eigen3::Eigen
)

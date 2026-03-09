find_package(Eigen3 REQUIRED)
find_package(osqp REQUIRED)
find_package(absl REQUIRED)

add_library(osqp-cpp SHARED IMPORTED)
set_target_properties(osqp-cpp PROPERTIES
  IMPORTED_LOCATION
    "${osqp-cpp_vendor_DIR}/../../../lib/libosqp-cpp.a"
  INTERFACE_INCLUDE_DIRECTORIES
    "${osqp-cpp_vendor_DIR}/../../../include"
)

target_link_libraries(osqp-cpp
  INTERFACE
  Eigen3::Eigen
  osqp::osqp
  absl::statusor
)

# osqp-cpp_vendor

`CMakeLists.txt`:

```cmake
find_package(osqp-cpp_vendor REQUIRED)

target_link_libraries(my_target osqp-cpp)
```

`package.xml`:

```xml
<depend>osqp-cpp_vendor</depend>
```
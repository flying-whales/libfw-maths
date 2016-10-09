cmake_minimum_required(VERSION 3.1)
project(libfw_maths)

include("cmake/utilities.cmake")

set(libfw_maths_src_files
    "src/vector2.cpp"
    "src/vector3.cpp"
    "src/vector4.cpp"
    "src/matrix4.cpp"
    "src/quaternion.cpp"
)

set(libfw_maths_include_dir "include")

fw_process_src_files(${libfw_maths_src_files})
fw_get_include_files(${libfw_maths_include_dir} libfw_maths_include_files)
fw_process_include_files(${libfw_maths_include_files})

add_library(fw_maths ${libfw_maths_src_files} ${libfw_maths_include_files})
fw_process_assembly(fw_maths)
target_include_directories(fw_maths PUBLIC ${libfw_maths_include_dir})
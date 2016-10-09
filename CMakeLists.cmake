cmake_minimum_required(VERSION 3.1)
project(fwlib_maths)

include("cmake/utilities")

set(fwlib_maths_src_files
    
)

set(fwlib_maths_include_dir "include")

fw_process_src_files(${fwlib_maths_src_files})
fw_get_include_files(${fw_maths_include_dir} fw_maths_include_files)
fw_process_include_files(${fw_maths_include_files})

add_library(fwlib_maths ${fwlib_maths_src_files} ${fwlib_maths_include_files})
fw_process_assembly(fwlib_maths)
target_include_directories(fwlib_maths PUBLIC ${fwlib_maths_include_dir})
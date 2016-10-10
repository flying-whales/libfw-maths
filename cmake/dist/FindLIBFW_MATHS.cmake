# Find libfw-maths
#
# [in]
# LIBFW_MATHS_ROOT
# 
# [out]
# LIBFW_MATHS_FOUND
# LIBFW_MATHS_INCLUDE_DIR
# LIBFW_MATHS_LIBRARIES

find_path(
    LIBFW_MATHS_INCLUDE_DIR
    NAMES
    "flyingwhales/maths.hpp"
    PATHS
    "$ENV{LIBFW_MATHS_ROOT}/include"
)

find_library(
    LIBFW_MATHS_LIBRARIES
    NAMES
    "fw_maths.lib"
    "libfw_maths.a"
    PATHS
    "$ENV{LIBFW_MATHS_ROOT}/lib"
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
    LIBFW_MATHS
    FOUND_VAR
    LIBFW_MATHS_FOUND
    REQUIRED_VARS
    LIBFW_MATHS_INCLUDE_DIR
    LIBFW_MATHS_LIBRARIES
)

mark_as_advanced(
    LIBFW_MATHS_INCLUDE_DIR 
    LIBFW_MATHS_LIBRARIES
)
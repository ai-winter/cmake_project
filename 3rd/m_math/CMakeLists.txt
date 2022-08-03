cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求

set(SUB_3RD_PREFIX "${PROJECT_SOURCE_DIR}/m_math")
add_library(m_math
    SHARED
    "${SUB_3RD_PREFIX}/include/m_math.h"
    "${SUB_3RD_PREFIX}/src/m_math.cpp"
    )

# 设置项目编译的输出目录
#set_target_properties(m_math PROPERTIES LINKER_LANGUAGE C
#        RUNTIME_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        LIBRARY_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        ARCHIVE_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        OUTPUT_NAME "m_math"
#        )
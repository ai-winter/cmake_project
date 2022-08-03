cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求

set(SUB_3RD_PREFIX "${PROJECT_SOURCE_DIR}/m_info")
add_library(m_info
    SHARED
    "${SUB_3RD_PREFIX}/include/m_info.h"
    "${SUB_3RD_PREFIX}/src/m_info.cpp"
    )

# 设置项目编译的输出目录
#set_target_properties(m_info PROPERTIES LINKER_LANGUAGE C
#        RUNTIME_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        LIBRARY_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        ARCHIVE_OUTPUT_DIRECTORY "${SUB_3RD_PREFIX}/lib"
#        OUTPUT_NAME "m_info"
#        )
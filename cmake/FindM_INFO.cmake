cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求
set(M_INFO_FOUND True)
set(M_INFO_VERSION "1.0.0")
#set(M_INFO_FOUND ${M_INFO_VERSION})

get_filename_component(ROOT "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
get_filename_component(ROOT "${ROOT}" DIRECTORY)

set(M_INFO_INCLUDE_DIRS "${ROOT}/3rd/m_info/include")
set(M_INFO_LIBS_DIRS "${ROOT}/3rd/m_info/lib")
file(GLOB_RECURSE M_INFO_LIBS "${M_INFO_LIBS_DIRS}/*.lib")
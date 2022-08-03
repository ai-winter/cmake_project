cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求
set(M_MATH_FOUND True)
set(M_MATH_VERSION "1.0.1")
#set(M_MATH_FOUND ${M_MATH_VERSION})

get_filename_component(ROOT "${CMAKE_CURRENT_LIST_FILE}" DIRECTORY)
get_filename_component(ROOT "${ROOT}" DIRECTORY)

set(M_MATH_INCLUDE_DIRS "${ROOT}/3rd/m_math/include")
set(M_MATH_LIBS_DIRS "${ROOT}/3rd/m_math/lib")
file(GLOB_RECURSE M_MATH_LIBS "${M_MATH_LIBS_DIRS}/*.lib")
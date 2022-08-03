# 构造第三方库文件
cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求
project("3rd")

add_subdirectory(m_math)
add_subdirectory(m_info)

# 项目分组
SET_PROPERTY(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(TARGET "m_math" PROPERTY FOLDER "3rdProject")
set_property(TARGET "m_info" PROPERTY FOLDER "3rdProject")
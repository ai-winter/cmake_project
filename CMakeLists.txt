cmake_minimum_required (VERSION 3.8)		# CMake最低版本要求
project ("CMakeProject")					# 工程名称

# 引入CMake模块
set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
include("${CMAKE_MODULE_PATH}/utils.cmake")

# 引入include头文件
set(INCLUDE_DIR "${PROJECT_SOURCE_DIR}/include")
include_directories(${INCLUDE_DIR})

# 引入src源文件
set(SRC_DIR "${PROJECT_SOURCE_DIR}/src")

# 引入第三方库
find_package(M_INFO REQUIRED)
if(M_INFO_FOUND)
    message("library m_info-${M_INFO_VERSION} has been found!")
else()
    message("library m_info-${M_INFO_VERSION} has not been found!")
endif()
find_package(M_MATH REQUIRED)
if(M_MATH_FOUND)
    message("library m_math-${M_MATH_VERSION} has been found!")
else()
    message("library m_math-${M_MATH_VERSION} has not been found!")
endif()

# 组织工程架构
if(${WIN32})
    fileGroup(3RD_HEADERS "${PROJECT_SOURCE_DIR}/3rd" "3rd" "h")
    fileGroup(MODULE_HEADERS ${INCLUDE_DIR} "Header Files" "h")
    fileGroup(MODULE_SRCS ${SRC_DIR} "Source Files" "cpp")
endif()

# 将源代码添加到此项目的可执行文件。
add_executable (${PROJECT_NAME}  ${MODULE_HEADERS} ${MODULE_SRCS} ${3RD_HEADERS} "./src/main.cpp")

# 链接库文件
target_link_libraries(${PROJECT_NAME} PUBLIC ${M_INFO_LIBS})
target_link_libraries(${PROJECT_NAME} PUBLIC ${M_MATH_LIBS})
target_include_directories(${PROJECT_NAME} PUBLIC ${M_INFO_INCLUDE_DIRS})
target_include_directories(${PROJECT_NAME} PUBLIC ${M_MATH_INCLUDE_DIRS})
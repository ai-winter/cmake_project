#/*******************************************************************************
#
# \file    utils.cmake
# \brief   cmake编译公共工具模块
# \author  Winter
# \version 1.0
# \date    2021-11-20
#
# -----------------------------------------------------------------------------
#
# -----------------------------------------------------------------------------
# 文件修改历史：
# <时间>        |  <版本>  | <作者>        |
# 2021-11-20    |  v1.0    | Winter       |
# -----------------------------------------------------------------------------
# ******************************************************************************/

# @breif: 获得当前目录的子目录名称列表
# @param[in]: result -> 返回列表
# @param[in]: curdir -> 当前列表
macro(subDirList result curdir)
  FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
  SET(dirlist "")
  foreach (child ${children})
    if (IS_DIRECTORY ${curdir}/${child} AND NOT ${child} STREQUAL "CMakeFiles")
      list(APPEND dirlist ${child})
    endif()
  endforeach ()
  set(${result} ${dirlist})
endmacro()

# @breif: 文件分组组织
# @param[in]: moduleFiles -> 返回指定文件夹中指定格式文件组成的列表
# @param[in]: groupDir -> 待分组目录路径
# @param[in]: groupName -> 分组名
# @param[in]: fileFormat -> 指定文件格式
macro(fileGroup moduleFiles groupDir groupName fileFormat)
    # 获得待分组目录下所有指定格式文件路径
    file(GLOB_RECURSE MODULE_FILES "${groupDir}/*.${fileFormat}")
    foreach(FILE ${MODULE_FILES})       
        # 获得文件所在目录
        get_filename_component(LOC_DIR ${FILE} DIRECTORY)          
        # 移除前缀
        string(REPLACE ${groupDir} "" GROUP ${LOC_DIR})
        set(GROUP ${groupName}${GROUP})      
        source_group(${GROUP} FILES ${FILE})
    endforeach()
    set(${moduleFiles} ${MODULE_FILES})
endmacro()
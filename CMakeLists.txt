cmake_minimum_required(VERSION 3.26)

project(Polyscript)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/build;${CMAKE_CURRENT_SOURCE_DIR}")
set(PROJ_ROOT_PATH "${CMAKE_CURRENT_SOURCE_DIR}")

include(common)

add_subdirectory(common_lib)
add_subdirectory(polyscript)
add_subdirectory(tests)


project(polyscript_tests)

set(SOURCES 
	"main.cpp"
	"tests_framework.cpp"
	"tests_framework.h"
	"compiler_explorer.cpp"
	"compiler_explorer.h")

add_executable(polyscript_tests ${SOURCES})

target_link_libraries(polyscript_tests common_lib polyscript bgfx bimg bimg_decode bx SDL2 SDL2main imgui)

target_include_directories(polyscript_tests PUBLIC
	"${PROJ_ROOT_PATH}/tests/third_party/SDL2/include"
	"${PROJ_ROOT_PATH}/third_party/imgui"
	"${PROJ_ROOT_PATH}/third_party/bgfx/include"
	"${PROJ_ROOT_PATH}/third_party/bx/include"
	"${PROJ_ROOT_PATH}/common_lib/source"
	"${PROJ_ROOT_PATH}/polyscript/")

target_link_directories(polyscript_tests PUBLIC
	"${PROJ_ROOT_PATH}/tests/third_party/SDL2/lib/x64")

set_property(TARGET polyscript_tests PROPERTY VS_DEBUGGER_WORKING_DIRECTORY "${PROJECT_SOURCE_DIR}")

add_subdirectory(third_party/bgfx)
add_subdirectory(third_party/bx)
add_subdirectory(third_party/bimg)
add_subdirectory(third_party/imgui)

GroupSources(${CMAKE_CURRENT_SOURCE_DIR})

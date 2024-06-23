project(bgfx)

# Core BGFX lib
# ----------------------

file( GLOB SOURCES "src/*.cpp" "src/*.h" "include/bgfx/*.h" )
list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/amalgamated.cpp")

add_library(bgfx ${SOURCES})
target_include_directories(bgfx PUBLIC
	"../bx/include"
	"../bimg/include"
	"include"
	"3rdparty"
	"3rdparty/dxsdk/include"
	"3rdparty/khronos")

# Build system specific configurations
if( MSVC )
	target_include_directories( bgfx
		PUBLIC
			"../bx/include/compat/msvc")
elseif( MINGW )
	target_include_directories( bgfx
		PUBLIC
		    "../bx/include/compat/mingw")
elseif( APPLE )
	target_include_directories( bgfx
		PUBLIC
		    "../bx/include/compat/osx")
endif()


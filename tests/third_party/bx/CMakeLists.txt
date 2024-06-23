project(bx)

file( GLOB SOURCES "src/*.cpp" "include/bx/*.h" "include/bx/inline/*.h")
list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/amalgamated.cpp")
list(REMOVE_ITEM SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/crtnone.cpp")

add_library(bx ${SOURCES})

target_include_directories(bx PUBLIC
	"include"
	"3rdparty")

# Build system specific configurations
if( MSVC )
	target_include_directories( bx
		PUBLIC
			"include/compat/msvc")
elseif( MINGW )
	target_include_directories( bx
		PUBLIC
		    "include/compat/mingw")
elseif( APPLE )
	target_include_directories( bx
		PUBLIC
		    "include/compat/osx")
endif()

target_compile_definitions(bx PUBLIC __STDC_FORMAT_MACROS _CRT_SECURE_NO_WARNINGS)




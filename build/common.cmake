
# Compiler settings
# --------------------------------

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions -fno-rtti")
elseif(MSVC)
	string(REPLACE "/EHsc" "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHs- /EHc- /GR-")
endif()

set(CMAKE_COMPILE_WARNING_AS_ERROR ON)

# Utilities
# --------------------------------

macro(GroupSources dir)
    file(GLOB_RECURSE sources RELATIVE ${dir} *.h *.hpp *.c *.cpp *.cc)
    foreach(source ${sources})
        get_filename_component(source_path "${source}" PATH)
        string(REPLACE "/" "\\" source_path_msvc "${source_path}")
        source_group("${source_path_msvc}" FILES "${source}")
    endforeach()
endmacro()

macro(BGFXCompat project)
	if( MSVC )
		target_include_directories( ${project}
			PUBLIC
			"${PROJ_ROOT_PATH}/tests/third_party/bx/include/compat/msvc")
	elseif( MINGW )
		target_include_directories( ${project}
			PUBLIC
			"${PROJ_ROOT_PATH}/tests/third_party/bx/include/compat/msvc")
	elseif( APPLE )
		target_include_directories( ${project}
			PUBLIC
			"${PROJ_ROOT_PATH}/tests/third_party/bx/include/compat/msvc")
	endif()
endmacro()

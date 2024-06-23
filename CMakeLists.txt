cmake_minimum_required(VERSION 3.26)

project(Polyscript)

# Global options
# ------------------------------------
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-exceptions -fno-rtti")
elseif(MSVC)
	string(REPLACE "/EHsc" "" CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /EHs- /EHc- /GR-")
endif()

set(CMAKE_COMPILE_WARNING_AS_ERROR ON)

# CommonLib compilation (Todo, move to it's own cmake file and put in that repo)
# ------------------------------------
add_subdirectory(common_lib)

add_subdirectory(polyscript)
add_subdirectory(tests)


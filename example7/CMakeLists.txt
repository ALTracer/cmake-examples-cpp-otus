cmake_minimum_required(VERSION 3.5)

project(Example7 VERSION 0.0.3)

option(BUILD_EXAMPLES "Whether to build an example or not." OFF)

add_subdirectory(src)

if(LINUX)
else()
endif()

if(BUILD_EXAMPLES)
	add_subdirectory(example)
endif()

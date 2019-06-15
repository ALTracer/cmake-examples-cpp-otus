cmake_minimum_required(VERSION 3.5)

project(Example2)

## compiler only requires these
#add_executable(version main.cpp version.cpp)

## version.h now shows up in project file sources tree
#add_executable(version main.cpp version.cpp version.h)

set(SOURCES
	main.cpp
	version.cpp
)

set(HEADERS
	version.h
)

add_executable(version ${SOURCES} ${HEADERS})
set_target_properties(
	version PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED ON
)

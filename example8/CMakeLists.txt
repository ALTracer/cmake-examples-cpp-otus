cmake_minimum_required(VERSION 3.5)

project(Example8)

set(SOURCES
	main.cpp
	math.cpp
)

set(HEADERS
	math.h
)

add_executable(main ${SOURCES} ${HEADERS})
set_target_properties(
	main PROPERTIES
	CXX_STANDARD 11
	CXX_STANDARD_REQUIRED ON
)

# Demand compiler features like this:
target_compile_features(
	main
	PRIVATE
	cxx_generic_lambdas
)

# man 7 pthreads mentions this option
#add_compile_options(-pthread)

# pthreads!
find_package(Threads REQUIRED)
target_link_libraries(main Threads::Threads)

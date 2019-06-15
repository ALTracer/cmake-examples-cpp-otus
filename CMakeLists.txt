cmake_minimum_required(VERSION 3.5)

project(CMakeExamples)

add_subdirectory(example1)
add_subdirectory(example2)
add_subdirectory(example3)
add_subdirectory(example4)

## One-shot compiling of sumLib and mainLib fails: not resolved
#add_subdirectory(example5)
## Example6 depends on libsumLib.a from Example5
#add_subdirectory(example6)

#!/bin/sh
## Build script
## for CMake C++ example project
## with an external library

cmake_compile_SumLib(){ ## Compiling SumLib
	cd ../example5/sumLib
	rm -r build; mkdir build && cd build
	pwd
	cmake .. # -DCMAKE_INSTALL_PREFIX="../install"
	make && make install
	cd ..
}

cmake_compile_Main(){ ## Compiling Main
	pwd
	rm -r build; mkdir build && cd build
	pwd
	env SUMLIBDIR="../example5/sumLib/install" cmake ..
	make
	cd ..
}

## main(){
#cmake_compile_SumLib
cmake_compile_Main

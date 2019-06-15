#!/bin/sh
## Build script
## for CMake C++ example project
## with a separate library

## Compiling SumLib
(cd sumLib
rm -r build; mkdir build && cd build
pwd
cmake .. # -DCMAKE_INSTALL_PREFIX="../install"
make && make install
cd ..
)

## Compiling mainLib
(cd src
rm -r build; mkdir build && cd build
pwd
cmake .. -DsumLib_DIR="../sumLib/install/lib/cmake/SumLib"
make
cd ..
)

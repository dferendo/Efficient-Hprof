# HProf Modification

This project is done to check if some improvements can be made to hprof. Add dependencies were added to the repository and Java version 8 is used. This version only compiles on linux, solaris and bsd, for other versions modify the lib folder to your system required files (These can be found when downloading jdk8 source code). 

## Benchmarks

To check the verify the improvements made, DaCapo benchmarks were used. [Link](https://sourceforge.net/projects/dacapobench/files/)

## Compilation

To compile hprof, use cmake. The shared library will be created in cmake-build-debug with the name "libhprof.so"



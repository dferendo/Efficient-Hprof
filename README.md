# HProf Modification

This project is done to check if some improvements can be made to hprof. Add dependencies were added to the repository and Java version 8 is used. This version only compiles on linux, solaris and bsd, for other versions modify the lib folder to your system required files (These can be found when downloading jdk8 source code). 

## Benchmarks

To check the verify the improvements made, DaCapo benchmarks were used. [Link](https://sourceforge.net/projects/dacapobench/files/). The script runs all possible projects. To redirect the script to the file use

```
bash ./run-bench-marks.sh > text.txt 2>&1
```

The following shows the results in microseconds.

| | No HProf | HProf | Modified HProf |
|:---: |  :---:   |  :---:   | :---:   | 
| avrora |3903 | | |
| batik |4070 | | |
| eclipse | N/A | | |
| fop |3037 | | |
| h2 | 8939 | | |
| jython | 9552 | | |
| luindex | 1744 | | |
| lusearch | 3274 | | |
| pmd | 3223 | | |
| sunflow | 6369 | | |
| tomcat | N/A | | |
| tradebeans | 8110 | | |
| tradesoap | 22222 | | |
| xalan | 4909 | | |



## Compilation

To compile hprof, use cmake. The shared library will be created in cmake-build-debug with the name "libhprof.so".



# HProf Modification

This project is done to check if some improvements can be made to hprof. All dependencies were added to the repository and Java version 8 is used. This version only compiles on linux, solaris and bsd, for other versions modify the lib folder to your system required files (These can be found when downloading jdk8 source code). 

## Benchmarks

To check the verify the improvements made, DaCapo benchmarks were used. [Link](https://sourceforge.net/projects/dacapobench/files/). The script runs all possible projects. To redirect the script to the file use

```
bash ./run-bench-marks.sh > text.txt 2>&1
```

The following shows the results in microseconds.

| Project    | No HProf   | HProf   | Suggested Optimal HProf %    | Most costly event HProf $ |
| :----:     | :----:     | :----:  | :----: 		           | :----:		       |
| avrora     | 3903       | 18788   | 19379		           | 6794                      |
| batik      | 4070       | 15669   | 13297 		           | 15485                     |
| eclipse    | N/A        | N/A     | N/A                          | N/A                       |
| fop        | 3037       | 23650   | 28546                        | 12644                     |
| h2         | 8939       | 190710  | 473981                       | 129842                    |
| jython     | 9552       | 539661  | 501153                       | 139319                    |
| luindex    | 1744       | 5036    | 3730                         | 3089                      | 
| lusearch   | 3274       | 64828   | 59995                        | 20204                     |
| pmd 	     | 3223       | 55116   | 58509                        | 19803                     |
| sunflow    | 6369       | 478120  | 478036                       | 48827                     |
| tomcat     | N/A        | N/A     | N/A                          | N/A                       |
| tradebeans | 8110       | N/A     | N/A                          | 440007                    |
| tradesoap  | 22222      | 2004548 | 2118732                      | 274979                    |
| xalan      | 4909       | 66053   | 80147                        | 29046                     |

% Call, Exception catch and return events were removed.
$ Object init event was removed.

## Compilation

To compile hprof, use cmake. The shared library will be created in cmake-build-debug with the name "libhprof.so".



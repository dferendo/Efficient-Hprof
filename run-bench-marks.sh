#!/bin/bash

cd ./benchmarks
echo No HProf

java -jar dacapo-9.12-bach.jar avrora
java -jar dacapo-9.12-bach.jar batik
java -jar dacapo-9.12-bach.jar eclipse
java -jar dacapo-9.12-bach.jar fop
java -jar dacapo-9.12-bach.jar h2
java -jar dacapo-9.12-bach.jar jython
java -jar dacapo-9.12-bach.jar luindex
java -jar dacapo-9.12-bach.jar lusearch
java -jar dacapo-9.12-bach.jar pmd
java -jar dacapo-9.12-bach.jar sunflow
java -jar dacapo-9.12-bach.jar tomcat
java -jar dacapo-9.12-bach.jar tradebeans
java -jar dacapo-9.12-bach.jar tradesoap
java -jar dacapo-9.12-bach.jar xalan

echo Normal HProf
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar avrora
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar batik
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar eclipse
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar fop
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar h2
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar jython
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar luindex
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar lusearch
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar pmd
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar sunflow
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar tomcat
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar tradebeans
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar tradesoap
java -agentpath:"../cmake-build-debug/libhprof.so" -jar dacapo-9.12-bach.jar xalan



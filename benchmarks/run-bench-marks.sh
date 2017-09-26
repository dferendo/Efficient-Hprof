#!/bin/bash

# Avrora
java -jar dacapo-9.12-bach.jar avrora
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar avrora
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar avrora

# Batik
java -jar dacapo-9.12-bach.jar batik
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar batik
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar batik

# Fop
java -jar dacapo-9.12-bach.jar fop
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar fop
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar fop

# h2
java -jar dacapo-9.12-bach.jar h2
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar h2
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar h2

# jython
java -jar dacapo-9.12-bach.jar jython
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar jython
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar jython

# luindex
java -jar dacapo-9.12-bach.jar luindex
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar luindex
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar luindex

# lusearch
java -jar dacapo-9.12-bach.jar lusearch
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar lusearch
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar lusearch

# pmd
java -jar dacapo-9.12-bach.jar pmd
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar pmd
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar pmd

# sunflow
java -jar dacapo-9.12-bach.jar sunflow
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar sunflow
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar sunflow

# tradebeans
java -jar dacapo-9.12-bach.jar tradebeans
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar tradebeans
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar tradebeans


# Tradesoap
java -jar dacapo-9.12-bach.jar tradesoap
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar tradesoap
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar tradesoap

# Xalan
java -jar dacapo-9.12-bach.jar xalan
java -agentpath:"./libs/libhprof.so" -jar dacapo-9.12-bach.jar xalan
java -agentpath:"./libs/libhprof_modified.so" -jar dacapo-9.12-bach.jar xalan

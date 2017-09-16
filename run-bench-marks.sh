#!/bin/bash

cd ./cmake-build-debug
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar avrora
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar batik
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar eclipse
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar fop
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar h2
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar jython
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar luindex
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar lusearch
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar pmd
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar sunflow
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar tomcat
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar tradebeans
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar tradesoap
java -agentlib:hprof -jar ../benchmarks/dacapo-9.12-bach.jar xalan



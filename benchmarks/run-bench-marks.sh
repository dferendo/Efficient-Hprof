#!/bin/bash

# Array of shared libraries
declare -a libraries=("Nohprof" "hprof")

# Array of programs to test using dacapo benchmarks
declare -a programs=("avrora" "batik" "fop" "h2" "jython" "luindex" "lusearch" "pmd" "sunflow" "tradebeans" "tradesoap" "xalan")

# Array of sizes found in dacapo benchmarks
declare -a sizes=("small" "default" "large")


for library in "${libraries[@]}"
do
	for program in "${programs[@]}"
	do
		for size in "${sizes[@]}"
		do

			if [ "$library" == "${libraries[0]}" ]; then
			   java -jar dacapo-9.12-bach.jar "$program" -s "$size"
			elif [ "$library" == "${libraries[0]}" ]; then
			   java -jar dacapo-9.12-bach.jar "$program" -s "$size"
			else
			   
			fi

		done
	done
done


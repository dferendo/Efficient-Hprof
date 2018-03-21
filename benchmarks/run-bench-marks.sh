#!/bin/bash

# Array of shared libraries
declare -a libraries=("Nohprof" "libadding_call_return_bci_calls_calls_do_nothing.so"
				"libbci_events_only.so" 
				"libbci_no_call_event.so"
				"libbci_no_new_array_event.so" 
                                "libbci_no_object_event.so"
				"libbci_no_return_event.so" 
                                "libhprof.so"
				"libjvmti_events_only.so" 
                                "libremove_any_allocation_method.so"
				"libremove_get_trace_and_any_allocation_method.so")

# Array of programs to test using dacapo benchmarks
declare -a programs=("avrora" "batik" "fop" "h2" "jython" "luindex" "lusearch" "pmd" "sunflow" "tradebeans" "tradesoap" "xalan")

# Array of sizes found in dacapo benchmarks
declare -a sizes=("small")
# declare -a sizes=("small" "default" "large")

for library in "${libraries[@]}"
do
	for program in "${programs[@]}"
	do
		for size in "${sizes[@]}"
		do
			echo "Executing $library, $program, $size"

			if [ "$library" == "${libraries[0]}" ]; then
			   eval "java -jar dacapo-9.12-bach.jar $program -s $size"
			else
			   eval "java -agentpath:\"./hprof_libraries/$library=heap=dump\" -jar dacapo-9.12-bach.jar $program -s $size"
			fi

		done
	done
done


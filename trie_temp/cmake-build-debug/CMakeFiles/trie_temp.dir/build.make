# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/dylan/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/dylan/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/172.4343.16/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dylan/Trees/hprof/trie_temp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dylan/Trees/hprof/trie_temp/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/trie_temp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trie_temp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trie_temp.dir/flags.make

CMakeFiles/trie_temp.dir/src/main.c.o: CMakeFiles/trie_temp.dir/flags.make
CMakeFiles/trie_temp.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dylan/Trees/hprof/trie_temp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/trie_temp.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/trie_temp.dir/src/main.c.o   -c /home/dylan/Trees/hprof/trie_temp/src/main.c

CMakeFiles/trie_temp.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/trie_temp.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dylan/Trees/hprof/trie_temp/src/main.c > CMakeFiles/trie_temp.dir/src/main.c.i

CMakeFiles/trie_temp.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/trie_temp.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dylan/Trees/hprof/trie_temp/src/main.c -o CMakeFiles/trie_temp.dir/src/main.c.s

CMakeFiles/trie_temp.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/trie_temp.dir/src/main.c.o.requires

CMakeFiles/trie_temp.dir/src/main.c.o.provides: CMakeFiles/trie_temp.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/trie_temp.dir/build.make CMakeFiles/trie_temp.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/trie_temp.dir/src/main.c.o.provides

CMakeFiles/trie_temp.dir/src/main.c.o.provides.build: CMakeFiles/trie_temp.dir/src/main.c.o


CMakeFiles/trie_temp.dir/src/trie.c.o: CMakeFiles/trie_temp.dir/flags.make
CMakeFiles/trie_temp.dir/src/trie.c.o: ../src/trie.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dylan/Trees/hprof/trie_temp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/trie_temp.dir/src/trie.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/trie_temp.dir/src/trie.c.o   -c /home/dylan/Trees/hprof/trie_temp/src/trie.c

CMakeFiles/trie_temp.dir/src/trie.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/trie_temp.dir/src/trie.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dylan/Trees/hprof/trie_temp/src/trie.c > CMakeFiles/trie_temp.dir/src/trie.c.i

CMakeFiles/trie_temp.dir/src/trie.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/trie_temp.dir/src/trie.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dylan/Trees/hprof/trie_temp/src/trie.c -o CMakeFiles/trie_temp.dir/src/trie.c.s

CMakeFiles/trie_temp.dir/src/trie.c.o.requires:

.PHONY : CMakeFiles/trie_temp.dir/src/trie.c.o.requires

CMakeFiles/trie_temp.dir/src/trie.c.o.provides: CMakeFiles/trie_temp.dir/src/trie.c.o.requires
	$(MAKE) -f CMakeFiles/trie_temp.dir/build.make CMakeFiles/trie_temp.dir/src/trie.c.o.provides.build
.PHONY : CMakeFiles/trie_temp.dir/src/trie.c.o.provides

CMakeFiles/trie_temp.dir/src/trie.c.o.provides.build: CMakeFiles/trie_temp.dir/src/trie.c.o


CMakeFiles/trie_temp.dir/src/new_trie.c.o: CMakeFiles/trie_temp.dir/flags.make
CMakeFiles/trie_temp.dir/src/new_trie.c.o: ../src/new_trie.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/dylan/Trees/hprof/trie_temp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/trie_temp.dir/src/new_trie.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/trie_temp.dir/src/new_trie.c.o   -c /home/dylan/Trees/hprof/trie_temp/src/new_trie.c

CMakeFiles/trie_temp.dir/src/new_trie.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/trie_temp.dir/src/new_trie.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/dylan/Trees/hprof/trie_temp/src/new_trie.c > CMakeFiles/trie_temp.dir/src/new_trie.c.i

CMakeFiles/trie_temp.dir/src/new_trie.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/trie_temp.dir/src/new_trie.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/dylan/Trees/hprof/trie_temp/src/new_trie.c -o CMakeFiles/trie_temp.dir/src/new_trie.c.s

CMakeFiles/trie_temp.dir/src/new_trie.c.o.requires:

.PHONY : CMakeFiles/trie_temp.dir/src/new_trie.c.o.requires

CMakeFiles/trie_temp.dir/src/new_trie.c.o.provides: CMakeFiles/trie_temp.dir/src/new_trie.c.o.requires
	$(MAKE) -f CMakeFiles/trie_temp.dir/build.make CMakeFiles/trie_temp.dir/src/new_trie.c.o.provides.build
.PHONY : CMakeFiles/trie_temp.dir/src/new_trie.c.o.provides

CMakeFiles/trie_temp.dir/src/new_trie.c.o.provides.build: CMakeFiles/trie_temp.dir/src/new_trie.c.o


# Object files for target trie_temp
trie_temp_OBJECTS = \
"CMakeFiles/trie_temp.dir/src/main.c.o" \
"CMakeFiles/trie_temp.dir/src/trie.c.o" \
"CMakeFiles/trie_temp.dir/src/new_trie.c.o"

# External object files for target trie_temp
trie_temp_EXTERNAL_OBJECTS =

trie_temp: CMakeFiles/trie_temp.dir/src/main.c.o
trie_temp: CMakeFiles/trie_temp.dir/src/trie.c.o
trie_temp: CMakeFiles/trie_temp.dir/src/new_trie.c.o
trie_temp: CMakeFiles/trie_temp.dir/build.make
trie_temp: CMakeFiles/trie_temp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/dylan/Trees/hprof/trie_temp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable trie_temp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trie_temp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trie_temp.dir/build: trie_temp

.PHONY : CMakeFiles/trie_temp.dir/build

CMakeFiles/trie_temp.dir/requires: CMakeFiles/trie_temp.dir/src/main.c.o.requires
CMakeFiles/trie_temp.dir/requires: CMakeFiles/trie_temp.dir/src/trie.c.o.requires
CMakeFiles/trie_temp.dir/requires: CMakeFiles/trie_temp.dir/src/new_trie.c.o.requires

.PHONY : CMakeFiles/trie_temp.dir/requires

CMakeFiles/trie_temp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trie_temp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trie_temp.dir/clean

CMakeFiles/trie_temp.dir/depend:
	cd /home/dylan/Trees/hprof/trie_temp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dylan/Trees/hprof/trie_temp /home/dylan/Trees/hprof/trie_temp /home/dylan/Trees/hprof/trie_temp/cmake-build-debug /home/dylan/Trees/hprof/trie_temp/cmake-build-debug /home/dylan/Trees/hprof/trie_temp/cmake-build-debug/CMakeFiles/trie_temp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trie_temp.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ensimag/S7/sepc/LW

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ensimag/S7/sepc/LW

# Include any dependencies generated for this target.
include CMakeFiles/emalloc.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/emalloc.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/emalloc.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/emalloc.dir/flags.make

CMakeFiles/emalloc.dir/src/mem.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem.c.o: src/mem.c
CMakeFiles/emalloc.dir/src/mem.c.o: CMakeFiles/emalloc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/emalloc.dir/src/mem.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/emalloc.dir/src/mem.c.o -MF CMakeFiles/emalloc.dir/src/mem.c.o.d -o CMakeFiles/emalloc.dir/src/mem.c.o -c /home/ensimag/S7/sepc/LW/src/mem.c

CMakeFiles/emalloc.dir/src/mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ensimag/S7/sepc/LW/src/mem.c > CMakeFiles/emalloc.dir/src/mem.c.i

CMakeFiles/emalloc.dir/src/mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ensimag/S7/sepc/LW/src/mem.c -o CMakeFiles/emalloc.dir/src/mem.c.s

CMakeFiles/emalloc.dir/src/mem_internals.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_internals.c.o: src/mem_internals.c
CMakeFiles/emalloc.dir/src/mem_internals.c.o: CMakeFiles/emalloc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/emalloc.dir/src/mem_internals.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/emalloc.dir/src/mem_internals.c.o -MF CMakeFiles/emalloc.dir/src/mem_internals.c.o.d -o CMakeFiles/emalloc.dir/src/mem_internals.c.o -c /home/ensimag/S7/sepc/LW/src/mem_internals.c

CMakeFiles/emalloc.dir/src/mem_internals.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_internals.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ensimag/S7/sepc/LW/src/mem_internals.c > CMakeFiles/emalloc.dir/src/mem_internals.c.i

CMakeFiles/emalloc.dir/src/mem_internals.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_internals.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ensimag/S7/sepc/LW/src/mem_internals.c -o CMakeFiles/emalloc.dir/src/mem_internals.c.s

CMakeFiles/emalloc.dir/src/mem_small.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_small.c.o: src/mem_small.c
CMakeFiles/emalloc.dir/src/mem_small.c.o: CMakeFiles/emalloc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/emalloc.dir/src/mem_small.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/emalloc.dir/src/mem_small.c.o -MF CMakeFiles/emalloc.dir/src/mem_small.c.o.d -o CMakeFiles/emalloc.dir/src/mem_small.c.o -c /home/ensimag/S7/sepc/LW/src/mem_small.c

CMakeFiles/emalloc.dir/src/mem_small.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_small.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ensimag/S7/sepc/LW/src/mem_small.c > CMakeFiles/emalloc.dir/src/mem_small.c.i

CMakeFiles/emalloc.dir/src/mem_small.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_small.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ensimag/S7/sepc/LW/src/mem_small.c -o CMakeFiles/emalloc.dir/src/mem_small.c.s

CMakeFiles/emalloc.dir/src/mem_medium.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_medium.c.o: src/mem_medium.c
CMakeFiles/emalloc.dir/src/mem_medium.c.o: CMakeFiles/emalloc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/emalloc.dir/src/mem_medium.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/emalloc.dir/src/mem_medium.c.o -MF CMakeFiles/emalloc.dir/src/mem_medium.c.o.d -o CMakeFiles/emalloc.dir/src/mem_medium.c.o -c /home/ensimag/S7/sepc/LW/src/mem_medium.c

CMakeFiles/emalloc.dir/src/mem_medium.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_medium.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ensimag/S7/sepc/LW/src/mem_medium.c > CMakeFiles/emalloc.dir/src/mem_medium.c.i

CMakeFiles/emalloc.dir/src/mem_medium.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_medium.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ensimag/S7/sepc/LW/src/mem_medium.c -o CMakeFiles/emalloc.dir/src/mem_medium.c.s

CMakeFiles/emalloc.dir/src/mem_large.c.o: CMakeFiles/emalloc.dir/flags.make
CMakeFiles/emalloc.dir/src/mem_large.c.o: src/mem_large.c
CMakeFiles/emalloc.dir/src/mem_large.c.o: CMakeFiles/emalloc.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/emalloc.dir/src/mem_large.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/emalloc.dir/src/mem_large.c.o -MF CMakeFiles/emalloc.dir/src/mem_large.c.o.d -o CMakeFiles/emalloc.dir/src/mem_large.c.o -c /home/ensimag/S7/sepc/LW/src/mem_large.c

CMakeFiles/emalloc.dir/src/mem_large.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/emalloc.dir/src/mem_large.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ensimag/S7/sepc/LW/src/mem_large.c > CMakeFiles/emalloc.dir/src/mem_large.c.i

CMakeFiles/emalloc.dir/src/mem_large.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/emalloc.dir/src/mem_large.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ensimag/S7/sepc/LW/src/mem_large.c -o CMakeFiles/emalloc.dir/src/mem_large.c.s

# Object files for target emalloc
emalloc_OBJECTS = \
"CMakeFiles/emalloc.dir/src/mem.c.o" \
"CMakeFiles/emalloc.dir/src/mem_internals.c.o" \
"CMakeFiles/emalloc.dir/src/mem_small.c.o" \
"CMakeFiles/emalloc.dir/src/mem_medium.c.o" \
"CMakeFiles/emalloc.dir/src/mem_large.c.o"

# External object files for target emalloc
emalloc_EXTERNAL_OBJECTS =

libemalloc.so: CMakeFiles/emalloc.dir/src/mem.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_internals.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_small.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_medium.c.o
libemalloc.so: CMakeFiles/emalloc.dir/src/mem_large.c.o
libemalloc.so: CMakeFiles/emalloc.dir/build.make
libemalloc.so: CMakeFiles/emalloc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ensimag/S7/sepc/LW/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking C shared library libemalloc.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/emalloc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/emalloc.dir/build: libemalloc.so
.PHONY : CMakeFiles/emalloc.dir/build

CMakeFiles/emalloc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/emalloc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/emalloc.dir/clean

CMakeFiles/emalloc.dir/depend:
	cd /home/ensimag/S7/sepc/LW && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ensimag/S7/sepc/LW /home/ensimag/S7/sepc/LW /home/ensimag/S7/sepc/LW /home/ensimag/S7/sepc/LW /home/ensimag/S7/sepc/LW/CMakeFiles/emalloc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/emalloc.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /home/theo/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/theo/.local/share/JetBrains/Toolbox/apps/clion/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/theo/CLionProjects/uebung6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/theo/CLionProjects/uebung6/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/A5fix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/A5fix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/A5fix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/A5fix.dir/flags.make

CMakeFiles/A5fix.dir/aufgabe5_fix.c.o: CMakeFiles/A5fix.dir/flags.make
CMakeFiles/A5fix.dir/aufgabe5_fix.c.o: /home/theo/CLionProjects/uebung6/aufgabe5_fix.c
CMakeFiles/A5fix.dir/aufgabe5_fix.c.o: CMakeFiles/A5fix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/theo/CLionProjects/uebung6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/A5fix.dir/aufgabe5_fix.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/A5fix.dir/aufgabe5_fix.c.o -MF CMakeFiles/A5fix.dir/aufgabe5_fix.c.o.d -o CMakeFiles/A5fix.dir/aufgabe5_fix.c.o -c /home/theo/CLionProjects/uebung6/aufgabe5_fix.c

CMakeFiles/A5fix.dir/aufgabe5_fix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/A5fix.dir/aufgabe5_fix.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/theo/CLionProjects/uebung6/aufgabe5_fix.c > CMakeFiles/A5fix.dir/aufgabe5_fix.c.i

CMakeFiles/A5fix.dir/aufgabe5_fix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/A5fix.dir/aufgabe5_fix.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/theo/CLionProjects/uebung6/aufgabe5_fix.c -o CMakeFiles/A5fix.dir/aufgabe5_fix.c.s

# Object files for target A5fix
A5fix_OBJECTS = \
"CMakeFiles/A5fix.dir/aufgabe5_fix.c.o"

# External object files for target A5fix
A5fix_EXTERNAL_OBJECTS =

A5fix: CMakeFiles/A5fix.dir/aufgabe5_fix.c.o
A5fix: CMakeFiles/A5fix.dir/build.make
A5fix: CMakeFiles/A5fix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/theo/CLionProjects/uebung6/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable A5fix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/A5fix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/A5fix.dir/build: A5fix
.PHONY : CMakeFiles/A5fix.dir/build

CMakeFiles/A5fix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/A5fix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/A5fix.dir/clean

CMakeFiles/A5fix.dir/depend:
	cd /home/theo/CLionProjects/uebung6/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/theo/CLionProjects/uebung6 /home/theo/CLionProjects/uebung6 /home/theo/CLionProjects/uebung6/cmake-build-debug /home/theo/CLionProjects/uebung6/cmake-build-debug /home/theo/CLionProjects/uebung6/cmake-build-debug/CMakeFiles/A5fix.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/A5fix.dir/depend


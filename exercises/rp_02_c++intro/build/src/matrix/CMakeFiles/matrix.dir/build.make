# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alessio/robotProgramming/exercises/rp_02_c++intro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alessio/robotProgramming/exercises/rp_02_c++intro/build

# Include any dependencies generated for this target.
include src/matrix/CMakeFiles/matrix.dir/depend.make

# Include the progress variables for this target.
include src/matrix/CMakeFiles/matrix.dir/progress.make

# Include the compile flags for this target's objects.
include src/matrix/CMakeFiles/matrix.dir/flags.make

src/matrix/CMakeFiles/matrix.dir/matrix_f.o: src/matrix/CMakeFiles/matrix.dir/flags.make
src/matrix/CMakeFiles/matrix.dir/matrix_f.o: ../src/matrix/matrix_f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alessio/robotProgramming/exercises/rp_02_c++intro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/matrix/CMakeFiles/matrix.dir/matrix_f.o"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/matrix.dir/matrix_f.o -c /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/matrix/matrix_f.cpp

src/matrix/CMakeFiles/matrix.dir/matrix_f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/matrix.dir/matrix_f.i"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/matrix/matrix_f.cpp > CMakeFiles/matrix.dir/matrix_f.i

src/matrix/CMakeFiles/matrix.dir/matrix_f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/matrix.dir/matrix_f.s"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/matrix/matrix_f.cpp -o CMakeFiles/matrix.dir/matrix_f.s

# Object files for target matrix
matrix_OBJECTS = \
"CMakeFiles/matrix.dir/matrix_f.o"

# External object files for target matrix
matrix_EXTERNAL_OBJECTS =

src/matrix/matrix: src/matrix/CMakeFiles/matrix.dir/matrix_f.o
src/matrix/matrix: src/matrix/CMakeFiles/matrix.dir/build.make
src/matrix/matrix: src/matrix/CMakeFiles/matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alessio/robotProgramming/exercises/rp_02_c++intro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable matrix"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/matrix/CMakeFiles/matrix.dir/build: src/matrix/matrix

.PHONY : src/matrix/CMakeFiles/matrix.dir/build

src/matrix/CMakeFiles/matrix.dir/clean:
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix && $(CMAKE_COMMAND) -P CMakeFiles/matrix.dir/cmake_clean.cmake
.PHONY : src/matrix/CMakeFiles/matrix.dir/clean

src/matrix/CMakeFiles/matrix.dir/depend:
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alessio/robotProgramming/exercises/rp_02_c++intro /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/matrix /home/alessio/robotProgramming/exercises/rp_02_c++intro/build /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/matrix/CMakeFiles/matrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/matrix/CMakeFiles/matrix.dir/depend

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
include src/binTree/CMakeFiles/binTree.dir/depend.make

# Include the progress variables for this target.
include src/binTree/CMakeFiles/binTree.dir/progress.make

# Include the compile flags for this target's objects.
include src/binTree/CMakeFiles/binTree.dir/flags.make

src/binTree/CMakeFiles/binTree.dir/binTree_f.o: src/binTree/CMakeFiles/binTree.dir/flags.make
src/binTree/CMakeFiles/binTree.dir/binTree_f.o: ../src/binTree/binTree_f.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alessio/robotProgramming/exercises/rp_02_c++intro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/binTree/CMakeFiles/binTree.dir/binTree_f.o"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binTree.dir/binTree_f.o -c /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/binTree/binTree_f.cpp

src/binTree/CMakeFiles/binTree.dir/binTree_f.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binTree.dir/binTree_f.i"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/binTree/binTree_f.cpp > CMakeFiles/binTree.dir/binTree_f.i

src/binTree/CMakeFiles/binTree.dir/binTree_f.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binTree.dir/binTree_f.s"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/binTree/binTree_f.cpp -o CMakeFiles/binTree.dir/binTree_f.s

# Object files for target binTree
binTree_OBJECTS = \
"CMakeFiles/binTree.dir/binTree_f.o"

# External object files for target binTree
binTree_EXTERNAL_OBJECTS =

src/binTree/binTree: src/binTree/CMakeFiles/binTree.dir/binTree_f.o
src/binTree/binTree: src/binTree/CMakeFiles/binTree.dir/build.make
src/binTree/binTree: src/binTree/CMakeFiles/binTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alessio/robotProgramming/exercises/rp_02_c++intro/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binTree"
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binTree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/binTree/CMakeFiles/binTree.dir/build: src/binTree/binTree

.PHONY : src/binTree/CMakeFiles/binTree.dir/build

src/binTree/CMakeFiles/binTree.dir/clean:
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree && $(CMAKE_COMMAND) -P CMakeFiles/binTree.dir/cmake_clean.cmake
.PHONY : src/binTree/CMakeFiles/binTree.dir/clean

src/binTree/CMakeFiles/binTree.dir/depend:
	cd /home/alessio/robotProgramming/exercises/rp_02_c++intro/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alessio/robotProgramming/exercises/rp_02_c++intro /home/alessio/robotProgramming/exercises/rp_02_c++intro/src/binTree /home/alessio/robotProgramming/exercises/rp_02_c++intro/build /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree /home/alessio/robotProgramming/exercises/rp_02_c++intro/build/src/binTree/CMakeFiles/binTree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/binTree/CMakeFiles/binTree.dir/depend

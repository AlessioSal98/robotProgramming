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
CMAKE_SOURCE_DIR = /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build

# Include any dependencies generated for this target.
include CMakeFiles/binary_tree_template_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/binary_tree_template_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/binary_tree_template_test.dir/flags.make

CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o: CMakeFiles/binary_tree_template_test.dir/flags.make
CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o: ../binary_tree_template_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o -c /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/binary_tree_template_test.cpp

CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/binary_tree_template_test.cpp > CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.i

CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/binary_tree_template_test.cpp -o CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.s

# Object files for target binary_tree_template_test
binary_tree_template_test_OBJECTS = \
"CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o"

# External object files for target binary_tree_template_test
binary_tree_template_test_EXTERNAL_OBJECTS =

binary_tree_template_test: CMakeFiles/binary_tree_template_test.dir/binary_tree_template_test.cpp.o
binary_tree_template_test: CMakeFiles/binary_tree_template_test.dir/build.make
binary_tree_template_test: CMakeFiles/binary_tree_template_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable binary_tree_template_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/binary_tree_template_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/binary_tree_template_test.dir/build: binary_tree_template_test

.PHONY : CMakeFiles/binary_tree_template_test.dir/build

CMakeFiles/binary_tree_template_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/binary_tree_template_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/binary_tree_template_test.dir/clean

CMakeFiles/binary_tree_template_test.dir/depend:
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles/binary_tree_template_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/binary_tree_template_test.dir/depend

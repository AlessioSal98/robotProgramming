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
include 02_mat_and_vec/CMakeFiles/static_vec_test.dir/depend.make

# Include the progress variables for this target.
include 02_mat_and_vec/CMakeFiles/static_vec_test.dir/progress.make

# Include the compile flags for this target's objects.
include 02_mat_and_vec/CMakeFiles/static_vec_test.dir/flags.make

02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o: 02_mat_and_vec/CMakeFiles/static_vec_test.dir/flags.make
02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o: ../02_mat_and_vec/static_vec_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o"
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o -c /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/02_mat_and_vec/static_vec_test.cpp

02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/static_vec_test.dir/static_vec_test.cpp.i"
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/02_mat_and_vec/static_vec_test.cpp > CMakeFiles/static_vec_test.dir/static_vec_test.cpp.i

02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/static_vec_test.dir/static_vec_test.cpp.s"
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/02_mat_and_vec/static_vec_test.cpp -o CMakeFiles/static_vec_test.dir/static_vec_test.cpp.s

# Object files for target static_vec_test
static_vec_test_OBJECTS = \
"CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o"

# External object files for target static_vec_test
static_vec_test_EXTERNAL_OBJECTS =

02_mat_and_vec/static_vec_test: 02_mat_and_vec/CMakeFiles/static_vec_test.dir/static_vec_test.cpp.o
02_mat_and_vec/static_vec_test: 02_mat_and_vec/CMakeFiles/static_vec_test.dir/build.make
02_mat_and_vec/static_vec_test: 02_mat_and_vec/CMakeFiles/static_vec_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable static_vec_test"
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/static_vec_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
02_mat_and_vec/CMakeFiles/static_vec_test.dir/build: 02_mat_and_vec/static_vec_test

.PHONY : 02_mat_and_vec/CMakeFiles/static_vec_test.dir/build

02_mat_and_vec/CMakeFiles/static_vec_test.dir/clean:
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec && $(CMAKE_COMMAND) -P CMakeFiles/static_vec_test.dir/cmake_clean.cmake
.PHONY : 02_mat_and_vec/CMakeFiles/static_vec_test.dir/clean

02_mat_and_vec/CMakeFiles/static_vec_test.dir/depend:
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/02_mat_and_vec /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/02_mat_and_vec/CMakeFiles/static_vec_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : 02_mat_and_vec/CMakeFiles/static_vec_test.dir/depend


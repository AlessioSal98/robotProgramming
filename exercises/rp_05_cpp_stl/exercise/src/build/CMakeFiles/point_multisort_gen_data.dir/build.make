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
include CMakeFiles/point_multisort_gen_data.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/point_multisort_gen_data.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/point_multisort_gen_data.dir/flags.make

CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o: CMakeFiles/point_multisort_gen_data.dir/flags.make
CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o: ../point_multisort_gen_data.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o -c /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/point_multisort_gen_data.cpp

CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/point_multisort_gen_data.cpp > CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.i

CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/point_multisort_gen_data.cpp -o CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.s

# Object files for target point_multisort_gen_data
point_multisort_gen_data_OBJECTS = \
"CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o"

# External object files for target point_multisort_gen_data
point_multisort_gen_data_EXTERNAL_OBJECTS =

point_multisort_gen_data: CMakeFiles/point_multisort_gen_data.dir/point_multisort_gen_data.cpp.o
point_multisort_gen_data: CMakeFiles/point_multisort_gen_data.dir/build.make
point_multisort_gen_data: CMakeFiles/point_multisort_gen_data.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable point_multisort_gen_data"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/point_multisort_gen_data.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/point_multisort_gen_data.dir/build: point_multisort_gen_data

.PHONY : CMakeFiles/point_multisort_gen_data.dir/build

CMakeFiles/point_multisort_gen_data.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/point_multisort_gen_data.dir/cmake_clean.cmake
.PHONY : CMakeFiles/point_multisort_gen_data.dir/clean

CMakeFiles/point_multisort_gen_data.dir/depend:
	cd /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build /home/alessio/robotProgramming/robotProgramming/exercises/rp_05_cpp_stl/exercise/src/build/CMakeFiles/point_multisort_gen_data.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/point_multisort_gen_data.dir/depend


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
CMAKE_SOURCE_DIR = /home/hongyk/sponge/tests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hongyk/sponge/tests/build

# Include any dependencies generated for this target.
include CMakeFiles/spongechecks.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/spongechecks.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/spongechecks.dir/flags.make

CMakeFiles/spongechecks.dir/byte_stream_test_harness.o: CMakeFiles/spongechecks.dir/flags.make
CMakeFiles/spongechecks.dir/byte_stream_test_harness.o: ../byte_stream_test_harness.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hongyk/sponge/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/spongechecks.dir/byte_stream_test_harness.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/spongechecks.dir/byte_stream_test_harness.o -c /home/hongyk/sponge/tests/byte_stream_test_harness.cc

CMakeFiles/spongechecks.dir/byte_stream_test_harness.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/spongechecks.dir/byte_stream_test_harness.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hongyk/sponge/tests/byte_stream_test_harness.cc > CMakeFiles/spongechecks.dir/byte_stream_test_harness.i

CMakeFiles/spongechecks.dir/byte_stream_test_harness.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/spongechecks.dir/byte_stream_test_harness.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hongyk/sponge/tests/byte_stream_test_harness.cc -o CMakeFiles/spongechecks.dir/byte_stream_test_harness.s

# Object files for target spongechecks
spongechecks_OBJECTS = \
"CMakeFiles/spongechecks.dir/byte_stream_test_harness.o"

# External object files for target spongechecks
spongechecks_EXTERNAL_OBJECTS =

libspongechecks.a: CMakeFiles/spongechecks.dir/byte_stream_test_harness.o
libspongechecks.a: CMakeFiles/spongechecks.dir/build.make
libspongechecks.a: CMakeFiles/spongechecks.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hongyk/sponge/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libspongechecks.a"
	$(CMAKE_COMMAND) -P CMakeFiles/spongechecks.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/spongechecks.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/spongechecks.dir/build: libspongechecks.a

.PHONY : CMakeFiles/spongechecks.dir/build

CMakeFiles/spongechecks.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/spongechecks.dir/cmake_clean.cmake
.PHONY : CMakeFiles/spongechecks.dir/clean

CMakeFiles/spongechecks.dir/depend:
	cd /home/hongyk/sponge/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hongyk/sponge/tests /home/hongyk/sponge/tests /home/hongyk/sponge/tests/build /home/hongyk/sponge/tests/build /home/hongyk/sponge/tests/build/CMakeFiles/spongechecks.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/spongechecks.dir/depend


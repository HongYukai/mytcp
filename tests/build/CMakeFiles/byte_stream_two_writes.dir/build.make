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
include CMakeFiles/byte_stream_two_writes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/byte_stream_two_writes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/byte_stream_two_writes.dir/flags.make

CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o: CMakeFiles/byte_stream_two_writes.dir/flags.make
CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o: ../byte_stream_two_writes.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hongyk/sponge/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o -c /home/hongyk/sponge/tests/byte_stream_two_writes.cc

CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hongyk/sponge/tests/byte_stream_two_writes.cc > CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.i

CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hongyk/sponge/tests/byte_stream_two_writes.cc -o CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.s

# Object files for target byte_stream_two_writes
byte_stream_two_writes_OBJECTS = \
"CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o"

# External object files for target byte_stream_two_writes
byte_stream_two_writes_EXTERNAL_OBJECTS =

byte_stream_two_writes: CMakeFiles/byte_stream_two_writes.dir/byte_stream_two_writes.o
byte_stream_two_writes: CMakeFiles/byte_stream_two_writes.dir/build.make
byte_stream_two_writes: libspongechecks.a
byte_stream_two_writes: CMakeFiles/byte_stream_two_writes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hongyk/sponge/tests/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable byte_stream_two_writes"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/byte_stream_two_writes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/byte_stream_two_writes.dir/build: byte_stream_two_writes

.PHONY : CMakeFiles/byte_stream_two_writes.dir/build

CMakeFiles/byte_stream_two_writes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/byte_stream_two_writes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/byte_stream_two_writes.dir/clean

CMakeFiles/byte_stream_two_writes.dir/depend:
	cd /home/hongyk/sponge/tests/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hongyk/sponge/tests /home/hongyk/sponge/tests /home/hongyk/sponge/tests/build /home/hongyk/sponge/tests/build /home/hongyk/sponge/tests/build/CMakeFiles/byte_stream_two_writes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/byte_stream_two_writes.dir/depend


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
CMAKE_SOURCE_DIR = /home/hongyk/sponge

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hongyk/sponge/cmake-build-debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/recv_connect.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/recv_connect.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/recv_connect.dir/flags.make

tests/CMakeFiles/recv_connect.dir/recv_connect.cc.o: tests/CMakeFiles/recv_connect.dir/flags.make
tests/CMakeFiles/recv_connect.dir/recv_connect.cc.o: ../tests/recv_connect.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hongyk/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/recv_connect.dir/recv_connect.cc.o"
	cd /home/hongyk/sponge/cmake-build-debug/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/recv_connect.dir/recv_connect.cc.o -c /home/hongyk/sponge/tests/recv_connect.cc

tests/CMakeFiles/recv_connect.dir/recv_connect.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recv_connect.dir/recv_connect.cc.i"
	cd /home/hongyk/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hongyk/sponge/tests/recv_connect.cc > CMakeFiles/recv_connect.dir/recv_connect.cc.i

tests/CMakeFiles/recv_connect.dir/recv_connect.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recv_connect.dir/recv_connect.cc.s"
	cd /home/hongyk/sponge/cmake-build-debug/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hongyk/sponge/tests/recv_connect.cc -o CMakeFiles/recv_connect.dir/recv_connect.cc.s

# Object files for target recv_connect
recv_connect_OBJECTS = \
"CMakeFiles/recv_connect.dir/recv_connect.cc.o"

# External object files for target recv_connect
recv_connect_EXTERNAL_OBJECTS =

tests/recv_connect: tests/CMakeFiles/recv_connect.dir/recv_connect.cc.o
tests/recv_connect: tests/CMakeFiles/recv_connect.dir/build.make
tests/recv_connect: tests/libspongechecks.a
tests/recv_connect: libsponge/libsponge.a
tests/recv_connect: tests/CMakeFiles/recv_connect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hongyk/sponge/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recv_connect"
	cd /home/hongyk/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recv_connect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/recv_connect.dir/build: tests/recv_connect

.PHONY : tests/CMakeFiles/recv_connect.dir/build

tests/CMakeFiles/recv_connect.dir/clean:
	cd /home/hongyk/sponge/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/recv_connect.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/recv_connect.dir/clean

tests/CMakeFiles/recv_connect.dir/depend:
	cd /home/hongyk/sponge/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hongyk/sponge /home/hongyk/sponge/tests /home/hongyk/sponge/cmake-build-debug /home/hongyk/sponge/cmake-build-debug/tests /home/hongyk/sponge/cmake-build-debug/tests/CMakeFiles/recv_connect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/recv_connect.dir/depend


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
CMAKE_BINARY_DIR = /home/hongyk/sponge/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/recv_window.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/recv_window.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/recv_window.dir/flags.make

tests/CMakeFiles/recv_window.dir/recv_window.cc.o: tests/CMakeFiles/recv_window.dir/flags.make
tests/CMakeFiles/recv_window.dir/recv_window.cc.o: ../tests/recv_window.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/hongyk/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/recv_window.dir/recv_window.cc.o"
	cd /home/hongyk/sponge/build/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/recv_window.dir/recv_window.cc.o -c /home/hongyk/sponge/tests/recv_window.cc

tests/CMakeFiles/recv_window.dir/recv_window.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recv_window.dir/recv_window.cc.i"
	cd /home/hongyk/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/hongyk/sponge/tests/recv_window.cc > CMakeFiles/recv_window.dir/recv_window.cc.i

tests/CMakeFiles/recv_window.dir/recv_window.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recv_window.dir/recv_window.cc.s"
	cd /home/hongyk/sponge/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/hongyk/sponge/tests/recv_window.cc -o CMakeFiles/recv_window.dir/recv_window.cc.s

# Object files for target recv_window
recv_window_OBJECTS = \
"CMakeFiles/recv_window.dir/recv_window.cc.o"

# External object files for target recv_window
recv_window_EXTERNAL_OBJECTS =

tests/recv_window: tests/CMakeFiles/recv_window.dir/recv_window.cc.o
tests/recv_window: tests/CMakeFiles/recv_window.dir/build.make
tests/recv_window: tests/libspongechecks.a
tests/recv_window: libsponge/libsponge.a
tests/recv_window: tests/CMakeFiles/recv_window.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/hongyk/sponge/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recv_window"
	cd /home/hongyk/sponge/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recv_window.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/recv_window.dir/build: tests/recv_window

.PHONY : tests/CMakeFiles/recv_window.dir/build

tests/CMakeFiles/recv_window.dir/clean:
	cd /home/hongyk/sponge/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/recv_window.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/recv_window.dir/clean

tests/CMakeFiles/recv_window.dir/depend:
	cd /home/hongyk/sponge/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hongyk/sponge /home/hongyk/sponge/tests /home/hongyk/sponge/build /home/hongyk/sponge/build/tests /home/hongyk/sponge/build/tests/CMakeFiles/recv_window.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/recv_window.dir/depend

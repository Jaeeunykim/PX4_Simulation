# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/jaeeun/velodyne_plugin

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jaeeun/velodyne_plugin/build

# Include any dependencies generated for this target.
include CMakeFiles/vel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/vel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/vel.dir/flags.make

CMakeFiles/vel.dir/vel.cc.o: CMakeFiles/vel.dir/flags.make
CMakeFiles/vel.dir/vel.cc.o: ../vel.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jaeeun/velodyne_plugin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/vel.dir/vel.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/vel.dir/vel.cc.o -c /home/jaeeun/velodyne_plugin/vel.cc

CMakeFiles/vel.dir/vel.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/vel.dir/vel.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jaeeun/velodyne_plugin/vel.cc > CMakeFiles/vel.dir/vel.cc.i

CMakeFiles/vel.dir/vel.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/vel.dir/vel.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jaeeun/velodyne_plugin/vel.cc -o CMakeFiles/vel.dir/vel.cc.s

CMakeFiles/vel.dir/vel.cc.o.requires:

.PHONY : CMakeFiles/vel.dir/vel.cc.o.requires

CMakeFiles/vel.dir/vel.cc.o.provides: CMakeFiles/vel.dir/vel.cc.o.requires
	$(MAKE) -f CMakeFiles/vel.dir/build.make CMakeFiles/vel.dir/vel.cc.o.provides.build
.PHONY : CMakeFiles/vel.dir/vel.cc.o.provides

CMakeFiles/vel.dir/vel.cc.o.provides.build: CMakeFiles/vel.dir/vel.cc.o


# Object files for target vel
vel_OBJECTS = \
"CMakeFiles/vel.dir/vel.cc.o"

# External object files for target vel
vel_EXTERNAL_OBJECTS =

vel: CMakeFiles/vel.dir/vel.cc.o
vel: CMakeFiles/vel.dir/build.make
vel: /usr/lib/x86_64-linux-gnu/libSimTKsimbody.so
vel: /usr/lib/x86_64-linux-gnu/libSimTKmath.so
vel: /usr/lib/x86_64-linux-gnu/libSimTKcommon.so
vel: /usr/lib/x86_64-linux-gnu/libblas.so
vel: /usr/lib/x86_64-linux-gnu/liblapack.so
vel: /usr/lib/x86_64-linux-gnu/libblas.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_client.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_gui.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_sensors.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_rendering.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_physics.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_ode.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_transport.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_msgs.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_util.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_common.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_gimpact.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_opcode.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_opende_ou.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_ccd.so
vel: /usr/lib/x86_64-linux-gnu/libboost_thread.so
vel: /usr/lib/x86_64-linux-gnu/libboost_system.so
vel: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
vel: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
vel: /usr/lib/x86_64-linux-gnu/libboost_regex.so
vel: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
vel: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
vel: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
vel: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
vel: /usr/lib/x86_64-linux-gnu/libpthread.so
vel: /usr/lib/x86_64-linux-gnu/libprotobuf.so
vel: /usr/lib/x86_64-linux-gnu/libsdformat.so
vel: /usr/lib/x86_64-linux-gnu/libOgreMain.so
vel: /usr/lib/x86_64-linux-gnu/libboost_thread.so
vel: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
vel: /usr/lib/x86_64-linux-gnu/libboost_system.so
vel: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
vel: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
vel: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
vel: /usr/lib/x86_64-linux-gnu/libpthread.so
vel: /usr/lib/x86_64-linux-gnu/libOgreTerrain.so
vel: /usr/lib/x86_64-linux-gnu/libOgrePaging.so
vel: /usr/lib/x86_64-linux-gnu/libignition-transport4.so.4.0.0
vel: /usr/lib/x86_64-linux-gnu/libignition-msgs1.so.1.0.0
vel: /usr/lib/x86_64-linux-gnu/libignition-common1.so.1.1.1
vel: /usr/lib/x86_64-linux-gnu/libignition-fuel_tools1.so.1.2.0
vel: /usr/lib/x86_64-linux-gnu/liblapack.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_client.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_gui.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_sensors.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_rendering.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_physics.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_ode.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_transport.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_msgs.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_util.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_common.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_gimpact.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_opcode.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_opende_ou.so
vel: /usr/lib/x86_64-linux-gnu/libgazebo_ccd.so
vel: /usr/lib/x86_64-linux-gnu/libboost_thread.so
vel: /usr/lib/x86_64-linux-gnu/libboost_system.so
vel: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
vel: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
vel: /usr/lib/x86_64-linux-gnu/libboost_regex.so
vel: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
vel: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
vel: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
vel: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
vel: /usr/lib/x86_64-linux-gnu/libpthread.so
vel: /usr/lib/x86_64-linux-gnu/libprotobuf.so
vel: /usr/lib/x86_64-linux-gnu/libsdformat.so
vel: /usr/lib/x86_64-linux-gnu/libOgreMain.so
vel: /usr/lib/x86_64-linux-gnu/libboost_thread.so
vel: /usr/lib/x86_64-linux-gnu/libboost_system.so
vel: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
vel: /usr/lib/x86_64-linux-gnu/libboost_program_options.so
vel: /usr/lib/x86_64-linux-gnu/libboost_regex.so
vel: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
vel: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
vel: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
vel: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
vel: /usr/lib/x86_64-linux-gnu/libpthread.so
vel: /usr/lib/x86_64-linux-gnu/libprotobuf.so
vel: /usr/lib/x86_64-linux-gnu/libsdformat.so
vel: /usr/lib/x86_64-linux-gnu/libOgreMain.so
vel: /usr/lib/x86_64-linux-gnu/libOgreTerrain.so
vel: /usr/lib/x86_64-linux-gnu/libOgrePaging.so
vel: /usr/lib/x86_64-linux-gnu/libprotobuf.so
vel: /usr/lib/x86_64-linux-gnu/libignition-math4.so.4.0.0
vel: /usr/lib/x86_64-linux-gnu/libuuid.so
vel: /usr/lib/x86_64-linux-gnu/libuuid.so
vel: /usr/lib/x86_64-linux-gnu/libswscale.so
vel: /usr/lib/x86_64-linux-gnu/libswscale.so
vel: /usr/lib/x86_64-linux-gnu/libavdevice.so
vel: /usr/lib/x86_64-linux-gnu/libavdevice.so
vel: /usr/lib/x86_64-linux-gnu/libavformat.so
vel: /usr/lib/x86_64-linux-gnu/libavformat.so
vel: /usr/lib/x86_64-linux-gnu/libavcodec.so
vel: /usr/lib/x86_64-linux-gnu/libavcodec.so
vel: /usr/lib/x86_64-linux-gnu/libavutil.so
vel: /usr/lib/x86_64-linux-gnu/libavutil.so
vel: CMakeFiles/vel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jaeeun/velodyne_plugin/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable vel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/vel.dir/build: vel

.PHONY : CMakeFiles/vel.dir/build

CMakeFiles/vel.dir/requires: CMakeFiles/vel.dir/vel.cc.o.requires

.PHONY : CMakeFiles/vel.dir/requires

CMakeFiles/vel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/vel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/vel.dir/clean

CMakeFiles/vel.dir/depend:
	cd /home/jaeeun/velodyne_plugin/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jaeeun/velodyne_plugin /home/jaeeun/velodyne_plugin /home/jaeeun/velodyne_plugin/build /home/jaeeun/velodyne_plugin/build /home/jaeeun/velodyne_plugin/build/CMakeFiles/vel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/vel.dir/depend


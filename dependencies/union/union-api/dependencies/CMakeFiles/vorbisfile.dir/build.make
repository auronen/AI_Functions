# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/auronen/Dokumenty/dev/AI_Functions

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/auronen/Dokumenty/dev/AI_Functions

# Include any dependencies generated for this target.
include dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/flags.make

dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj: dependencies/union/union-api/dependencies/vorbis/lib/vorbisfile.c
dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj /FdCMakeFiles/vorbisfile.dir/vorbisfile.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/vorbis/lib/vorbisfile.c

dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.i  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/vorbis/lib/vorbisfile.c

dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/vorbis/lib/vorbisfile.c

# Object files for target vorbisfile
vorbisfile_OBJECTS = \
"CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj"

# External object files for target vorbisfile
vorbisfile_EXTERNAL_OBJECTS =

dependencies/union/union-api/dependencies/vorbisfile.lib: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/vorbis/lib/vorbisfile.c.obj
dependencies/union/union-api/dependencies/vorbisfile.lib: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/build.make
dependencies/union/union-api/dependencies/vorbisfile.lib: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/objects1.rsp
dependencies/union/union-api/dependencies/vorbisfile.lib: dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library vorbisfile.lib"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -P CMakeFiles/vorbisfile.dir/cmake_clean_target.cmake
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vorbisfile.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/build: dependencies/union/union-api/dependencies/vorbisfile.lib
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/build

dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/clean:
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -P CMakeFiles/vorbisfile.dir/cmake_clean.cmake
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/clean

dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/depend:
	cd /home/auronen/Dokumenty/dev/AI_Functions && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/auronen/Dokumenty/dev/AI_Functions /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies /home/auronen/Dokumenty/dev/AI_Functions /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/vorbisfile.dir/depend


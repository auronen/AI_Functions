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
include dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.make

# Include the progress variables for this target.
include dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/progress.make

# Include the compile flags for this target's objects.
include dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj: dependencies/union/union-api/dependencies/detours/src/creatwth.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/creatwth.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/creatwth.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/creatwth.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/creatwth.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/creatwth.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/creatwth.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/creatwth.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/creatwth.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.obj: dependencies/union/union-api/dependencies/detours/src/detours.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/detours.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/detours.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/detours.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/detours.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/detours.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/detours.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/detours.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/detours.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/detours.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disasm.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disasm.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disasm.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disasm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disasm.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disasm.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disasm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disasm.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disasm.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disasm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disolarm.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disolarm.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disolarm.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disolarm.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disolarm.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disolarm.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disolarm64.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disolarm64.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disolarm64.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disolarm64.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disolarm64.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolarm64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disolia64.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disolia64.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolia64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disolia64.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disolia64.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolia64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disolia64.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disolia64.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolia64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disolx64.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disolx64.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disolx64.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disolx64.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disolx64.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disolx64.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx64.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj: dependencies/union/union-api/dependencies/detours/src/disolx86.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/disolx86.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx86.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/disolx86.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/disolx86.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx86.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/disolx86.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/disolx86.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/disolx86.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.obj: dependencies/union/union-api/dependencies/detours/src/image.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/image.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/image.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/image.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/image.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/image.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/image.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/image.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/image.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/image.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/flags.make
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.obj: dependencies/union/union-api/dependencies/detours/src/modules.cpp
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.obj: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.obj"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles/detours.dir/detours/src/modules.cpp.obj.d --working-dir=/home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies --filter-prefix="Note: including file: " -- /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /showIncludes /FoCMakeFiles/detours.dir/detours/src/modules.cpp.obj /FdCMakeFiles/detours.dir/detours.pdb /FS -c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/modules.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/detours.dir/detours/src/modules.cpp.i"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl > CMakeFiles/detours.dir/detours/src/modules.cpp.i  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/modules.cpp

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/detours.dir/detours/src/modules.cpp.s"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && /home/auronen/my_msvc/opt/msvc/bin/x86/cl  /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles/detours.dir/detours/src/modules.cpp.s /c /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/detours/src/modules.cpp

# Object files for target detours
detours_OBJECTS = \
"CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/detours.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disasm.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/image.cpp.obj" \
"CMakeFiles/detours.dir/detours/src/modules.cpp.obj"

# External object files for target detours
detours_EXTERNAL_OBJECTS =

dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/creatwth.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/detours.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disasm.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolarm64.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolia64.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx64.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/disolx86.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/image.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/detours/src/modules.cpp.obj
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/build.make
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/objects1.rsp
dependencies/union/union-api/dependencies/detours.lib: dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/auronen/Dokumenty/dev/AI_Functions/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Linking CXX static library detours.lib"
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -P CMakeFiles/detours.dir/cmake_clean_target.cmake
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detours.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/build: dependencies/union/union-api/dependencies/detours.lib
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/build

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/clean:
	cd /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies && $(CMAKE_COMMAND) -P CMakeFiles/detours.dir/cmake_clean.cmake
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/clean

dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/depend:
	cd /home/auronen/Dokumenty/dev/AI_Functions && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/auronen/Dokumenty/dev/AI_Functions /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies /home/auronen/Dokumenty/dev/AI_Functions /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies /home/auronen/Dokumenty/dev/AI_Functions/dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : dependencies/union/union-api/dependencies/CMakeFiles/detours.dir/depend


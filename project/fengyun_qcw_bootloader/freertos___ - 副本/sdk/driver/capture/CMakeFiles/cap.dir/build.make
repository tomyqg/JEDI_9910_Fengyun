# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_COMMAND = E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/tool/bin/cmake.exe

# The command to remove a file.
RM = E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/tool/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos

# Include any dependencies generated for this target.
include sdk/driver/capture/CMakeFiles/cap.dir/depend.make

# Include the progress variables for this target.
include sdk/driver/capture/CMakeFiles/cap.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/driver/capture/CMakeFiles/cap.dir/flags.make

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj: sdk/driver/capture/CMakeFiles/cap.dir/flags.make
sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj: ../../../sdk/driver/capture/mmp_capture.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cap.dir/mmp_capture.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/mmp_capture.c

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cap.dir/mmp_capture.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/mmp_capture.c > CMakeFiles/cap.dir/mmp_capture.c.i

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cap.dir/mmp_capture.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/mmp_capture.c -o CMakeFiles/cap.dir/mmp_capture.c.s

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.requires:
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.requires

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.provides: sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.requires
	$(MAKE) -f sdk/driver/capture/CMakeFiles/cap.dir/build.make sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.provides.build
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.provides

sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.provides.build: sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj: sdk/driver/capture/CMakeFiles/cap.dir/flags.make
sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj: ../../../sdk/driver/capture/capture_hw.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cap.dir/capture_hw.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture_hw.c

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cap.dir/capture_hw.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture_hw.c > CMakeFiles/cap.dir/capture_hw.c.i

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cap.dir/capture_hw.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture_hw.c -o CMakeFiles/cap.dir/capture_hw.c.s

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.requires:
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.requires

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.provides: sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.requires
	$(MAKE) -f sdk/driver/capture/CMakeFiles/cap.dir/build.make sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.provides.build
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.provides

sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.provides.build: sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj: sdk/driver/capture/CMakeFiles/cap.dir/flags.make
sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj: ../../../sdk/driver/capture/capture.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cap.dir/capture.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture.c

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cap.dir/capture.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture.c > CMakeFiles/cap.dir/capture.c.i

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cap.dir/capture.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/capture.c -o CMakeFiles/cap.dir/capture.c.s

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.requires:
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.requires

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.provides: sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.requires
	$(MAKE) -f sdk/driver/capture/CMakeFiles/cap.dir/build.make sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.provides.build
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.provides

sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.provides.build: sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj: sdk/driver/capture/CMakeFiles/cap.dir/flags.make
sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj: ../../../sdk/driver/capture/cap_util.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/cap.dir/cap_util.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/cap_util.c

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cap.dir/cap_util.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/cap_util.c > CMakeFiles/cap.dir/cap_util.c.i

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cap.dir/cap_util.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture/cap_util.c -o CMakeFiles/cap.dir/cap_util.c.s

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.requires:
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.requires

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.provides: sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.requires
	$(MAKE) -f sdk/driver/capture/CMakeFiles/cap.dir/build.make sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.provides.build
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.provides

sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.provides.build: sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj

# Object files for target cap
cap_OBJECTS = \
"CMakeFiles/cap.dir/mmp_capture.c.obj" \
"CMakeFiles/cap.dir/capture_hw.c.obj" \
"CMakeFiles/cap.dir/capture.c.obj" \
"CMakeFiles/cap.dir/cap_util.c.obj"

# External object files for target cap
cap_EXTERNAL_OBJECTS =

lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj
lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj
lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj
lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj
lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/build.make
lib/libcap.a: sdk/driver/capture/CMakeFiles/cap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../lib/libcap.a"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && $(CMAKE_COMMAND) -P CMakeFiles/cap.dir/cmake_clean_target.cmake
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdk/driver/capture/CMakeFiles/cap.dir/build: lib/libcap.a
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/build

sdk/driver/capture/CMakeFiles/cap.dir/requires: sdk/driver/capture/CMakeFiles/cap.dir/mmp_capture.c.obj.requires
sdk/driver/capture/CMakeFiles/cap.dir/requires: sdk/driver/capture/CMakeFiles/cap.dir/capture_hw.c.obj.requires
sdk/driver/capture/CMakeFiles/cap.dir/requires: sdk/driver/capture/CMakeFiles/cap.dir/capture.c.obj.requires
sdk/driver/capture/CMakeFiles/cap.dir/requires: sdk/driver/capture/CMakeFiles/cap.dir/cap_util.c.obj.requires
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/requires

sdk/driver/capture/CMakeFiles/cap.dir/clean:
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture && $(CMAKE_COMMAND) -P CMakeFiles/cap.dir/cmake_clean.cmake
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/clean

sdk/driver/capture/CMakeFiles/cap.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/capture E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/capture/CMakeFiles/cap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/driver/capture/CMakeFiles/cap.dir/depend


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
include sdk/driver/sd/CMakeFiles/sd.dir/depend.make

# Include the progress variables for this target.
include sdk/driver/sd/CMakeFiles/sd.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/driver/sd/CMakeFiles/sd.dir/flags.make

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj: sdk/driver/sd/CMakeFiles/sd.dir/flags.make
sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj: ../../../sdk/driver/sd/mmp_sd.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sd.dir/mmp_sd.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmp_sd.c

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sd.dir/mmp_sd.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmp_sd.c > CMakeFiles/sd.dir/mmp_sd.c.i

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sd.dir/mmp_sd.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmp_sd.c -o CMakeFiles/sd.dir/mmp_sd.c.s

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.requires:
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.requires

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.provides: sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.requires
	$(MAKE) -f sdk/driver/sd/CMakeFiles/sd.dir/build.make sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.provides.build
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.provides

sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.provides.build: sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj: sdk/driver/sd/CMakeFiles/sd.dir/flags.make
sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj: ../../../sdk/driver/sd/sd_hw.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sd.dir/sd_hw.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd_hw.c

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sd.dir/sd_hw.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd_hw.c > CMakeFiles/sd.dir/sd_hw.c.i

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sd.dir/sd_hw.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd_hw.c -o CMakeFiles/sd.dir/sd_hw.c.s

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.requires:
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.requires

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.provides: sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.requires
	$(MAKE) -f sdk/driver/sd/CMakeFiles/sd.dir/build.make sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.provides.build
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.provides

sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.provides.build: sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj: sdk/driver/sd/CMakeFiles/sd.dir/flags.make
sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj: ../../../sdk/driver/sd/sd.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sd.dir/sd.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd.c

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sd.dir/sd.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd.c > CMakeFiles/sd.dir/sd.c.i

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sd.dir/sd.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/sd.c -o CMakeFiles/sd.dir/sd.c.s

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.requires:
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.requires

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.provides: sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.requires
	$(MAKE) -f sdk/driver/sd/CMakeFiles/sd.dir/build.make sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.provides.build
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.provides

sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.provides.build: sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj: sdk/driver/sd/CMakeFiles/sd.dir/flags.make
sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj: ../../../sdk/driver/sd/mmc.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sd.dir/mmc.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmc.c

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sd.dir/mmc.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmc.c > CMakeFiles/sd.dir/mmc.c.i

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sd.dir/mmc.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/mmc.c -o CMakeFiles/sd.dir/mmc.c.s

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.requires:
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.requires

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.provides: sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.requires
	$(MAKE) -f sdk/driver/sd/CMakeFiles/sd.dir/build.make sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.provides.build
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.provides

sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.provides.build: sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj

sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj: sdk/driver/sd/CMakeFiles/sd.dir/flags.make
sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj: ../../../sdk/driver/sd/common.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/sd.dir/common.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/common.c

sdk/driver/sd/CMakeFiles/sd.dir/common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sd.dir/common.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/common.c > CMakeFiles/sd.dir/common.c.i

sdk/driver/sd/CMakeFiles/sd.dir/common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sd.dir/common.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd/common.c -o CMakeFiles/sd.dir/common.c.s

sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.requires:
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.requires

sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.provides: sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.requires
	$(MAKE) -f sdk/driver/sd/CMakeFiles/sd.dir/build.make sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.provides.build
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.provides

sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.provides.build: sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj

# Object files for target sd
sd_OBJECTS = \
"CMakeFiles/sd.dir/mmp_sd.c.obj" \
"CMakeFiles/sd.dir/sd_hw.c.obj" \
"CMakeFiles/sd.dir/sd.c.obj" \
"CMakeFiles/sd.dir/mmc.c.obj" \
"CMakeFiles/sd.dir/common.c.obj"

# External object files for target sd
sd_EXTERNAL_OBJECTS =

lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/build.make
lib/libsd.a: sdk/driver/sd/CMakeFiles/sd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../lib/libsd.a"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && $(CMAKE_COMMAND) -P CMakeFiles/sd.dir/cmake_clean_target.cmake
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdk/driver/sd/CMakeFiles/sd.dir/build: lib/libsd.a
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/build

sdk/driver/sd/CMakeFiles/sd.dir/requires: sdk/driver/sd/CMakeFiles/sd.dir/mmp_sd.c.obj.requires
sdk/driver/sd/CMakeFiles/sd.dir/requires: sdk/driver/sd/CMakeFiles/sd.dir/sd_hw.c.obj.requires
sdk/driver/sd/CMakeFiles/sd.dir/requires: sdk/driver/sd/CMakeFiles/sd.dir/sd.c.obj.requires
sdk/driver/sd/CMakeFiles/sd.dir/requires: sdk/driver/sd/CMakeFiles/sd.dir/mmc.c.obj.requires
sdk/driver/sd/CMakeFiles/sd.dir/requires: sdk/driver/sd/CMakeFiles/sd.dir/common.c.obj.requires
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/requires

sdk/driver/sd/CMakeFiles/sd.dir/clean:
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd && $(CMAKE_COMMAND) -P CMakeFiles/sd.dir/cmake_clean.cmake
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/clean

sdk/driver/sd/CMakeFiles/sd.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/sd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/sd/CMakeFiles/sd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/driver/sd/CMakeFiles/sd.dir/depend


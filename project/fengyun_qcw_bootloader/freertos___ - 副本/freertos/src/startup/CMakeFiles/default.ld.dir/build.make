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

# Utility rule file for default.ld.

# Include the progress variables for this target.
include freertos/src/startup/CMakeFiles/default.ld.dir/progress.make

freertos/src/startup/CMakeFiles/default.ld: lib/default.ld

lib/default.ld: ../../../freertos/src/startup/default.lds
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../../../lib/default.ld"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/freertos/src/startup && sm32-elf-cpp -IE:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/include/aud -D__OR32__ -D__FREERTOS__ -DMM9910 -DCFG_OSC_CLK=12000000 -DIDLE_TASK -DRTOS_USE_ISR -DMEMORY_SIZE=64M -DENABLE_CODECS_PLUGIN -DCUSTOMER_CODE=9 -DPROJECT_CODE=1 -DSDK_MAJOR_VERSION=0 -DSDK_MINOR_VERSION=0 -DBUILD_NUMBER=3 -DBOOT_LOADER -E -P -o E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/lib/default.ld E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/freertos/src/startup/default.lds

default.ld: freertos/src/startup/CMakeFiles/default.ld
default.ld: lib/default.ld
default.ld: freertos/src/startup/CMakeFiles/default.ld.dir/build.make
.PHONY : default.ld

# Rule to build all files generated by this target.
freertos/src/startup/CMakeFiles/default.ld.dir/build: default.ld
.PHONY : freertos/src/startup/CMakeFiles/default.ld.dir/build

freertos/src/startup/CMakeFiles/default.ld.dir/clean:
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/freertos/src/startup && $(CMAKE_COMMAND) -P CMakeFiles/default.ld.dir/cmake_clean.cmake
.PHONY : freertos/src/startup/CMakeFiles/default.ld.dir/clean

freertos/src/startup/CMakeFiles/default.ld.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/freertos/src/startup E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/freertos/src/startup E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/freertos/src/startup/CMakeFiles/default.ld.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : freertos/src/startup/CMakeFiles/default.ld.dir/depend


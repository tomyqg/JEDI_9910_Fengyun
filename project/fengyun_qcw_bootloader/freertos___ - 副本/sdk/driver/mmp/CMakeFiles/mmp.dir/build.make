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
include sdk/driver/mmp/CMakeFiles/mmp.dir/depend.make

# Include the progress variables for this target.
include sdk/driver/mmp/CMakeFiles/mmp.dir/progress.make

# Include the compile flags for this target's objects.
include sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj: ../../../sdk/driver/mmp/ahb.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/ahb.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/ahb.c

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/ahb.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/ahb.c > CMakeFiles/mmp.dir/ahb.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/ahb.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/ahb.c -o CMakeFiles/mmp.dir/ahb.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj: ../../../sdk/driver/mmp/clock.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/clock.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/clock.c

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/clock.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/clock.c > CMakeFiles/mmp.dir/clock.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/clock.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/clock.c -o CMakeFiles/mmp.dir/clock.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj: ../../../sdk/driver/mmp/gpio.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/gpio.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/gpio.c

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/gpio.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/gpio.c > CMakeFiles/mmp.dir/gpio.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/gpio.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/gpio.c -o CMakeFiles/mmp.dir/gpio.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj: ../../../sdk/driver/mmp/host.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/host.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/host.c

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/host.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/host.c > CMakeFiles/mmp.dir/host.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/host.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/host.c -o CMakeFiles/mmp.dir/host.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj: ../../../sdk/driver/mmp/mem.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/mem.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/mem.c

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/mem.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/mem.c > CMakeFiles/mmp.dir/mem.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/mem.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/mem.c -o CMakeFiles/mmp.dir/mem.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj: sdk/driver/mmp/CMakeFiles/mmp.dir/flags.make
sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj: ../../../sdk/driver/mmp/sys.c
	$(CMAKE_COMMAND) -E cmake_progress_report E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/mmp.dir/sys.c.obj   -c E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/sys.c

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmp.dir/sys.c.i"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -E E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/sys.c > CMakeFiles/mmp.dir/sys.c.i

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmp.dir/sys.c.s"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && C:/ITEGCC/bin/sm32-elf-gcc.exe  $(C_DEFINES) $(C_FLAGS) -S E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp/sys.c -o CMakeFiles/mmp.dir/sys.c.s

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.requires:
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.requires

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.provides: sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.requires
	$(MAKE) -f sdk/driver/mmp/CMakeFiles/mmp.dir/build.make sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.provides.build
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.provides

sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.provides.build: sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj

# Object files for target mmp
mmp_OBJECTS = \
"CMakeFiles/mmp.dir/ahb.c.obj" \
"CMakeFiles/mmp.dir/clock.c.obj" \
"CMakeFiles/mmp.dir/gpio.c.obj" \
"CMakeFiles/mmp.dir/host.c.obj" \
"CMakeFiles/mmp.dir/mem.c.obj" \
"CMakeFiles/mmp.dir/sys.c.obj"

# External object files for target mmp
mmp_EXTERNAL_OBJECTS =

lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/build.make
lib/libmmp.a: sdk/driver/mmp/CMakeFiles/mmp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../lib/libmmp.a"
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && $(CMAKE_COMMAND) -P CMakeFiles/mmp.dir/cmake_clean_target.cmake
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sdk/driver/mmp/CMakeFiles/mmp.dir/build: lib/libmmp.a
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/build

sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/ahb.c.obj.requires
sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/clock.c.obj.requires
sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/gpio.c.obj.requires
sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/host.c.obj.requires
sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/mem.c.obj.requires
sdk/driver/mmp/CMakeFiles/mmp.dir/requires: sdk/driver/mmp/CMakeFiles/mmp.dir/sys.c.obj.requires
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/requires

sdk/driver/mmp/CMakeFiles/mmp.dir/clean:
	cd E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp && $(CMAKE_COMMAND) -P CMakeFiles/mmp.dir/cmake_clean.cmake
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/clean

sdk/driver/mmp/CMakeFiles/mmp.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/sdk/driver/mmp E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp E:/Grabber/SDK/TW/Fengyun/JEDI_9910_Fengyun/project/fengyun_fy283_bootloader/freertos/sdk/driver/mmp/CMakeFiles/mmp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sdk/driver/mmp/CMakeFiles/mmp.dir/depend


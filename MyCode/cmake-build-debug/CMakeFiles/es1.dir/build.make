# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/jacop/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/jacop/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/es1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/es1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/es1.dir/flags.make

CMakeFiles/es1.dir/es1.c.o: CMakeFiles/es1.dir/flags.make
CMakeFiles/es1.dir/es1.c.o: ../es1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/es1.dir/es1.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/es1.dir/es1.c.o   -c "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/es1.c"

CMakeFiles/es1.dir/es1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/es1.dir/es1.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/es1.c" > CMakeFiles/es1.dir/es1.c.i

CMakeFiles/es1.dir/es1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/es1.dir/es1.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/es1.c" -o CMakeFiles/es1.dir/es1.c.s

# Object files for target es1
es1_OBJECTS = \
"CMakeFiles/es1.dir/es1.c.o"

# External object files for target es1
es1_EXTERNAL_OBJECTS =

es1.exe: CMakeFiles/es1.dir/es1.c.o
es1.exe: CMakeFiles/es1.dir/build.make
es1.exe: CMakeFiles/es1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable es1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/es1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/es1.dir/build: es1.exe

.PHONY : CMakeFiles/es1.dir/build

CMakeFiles/es1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/es1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/es1.dir/clean

CMakeFiles/es1.dir/depend:
	cd "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode" "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode" "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug" "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug" "/cygdrive/c/Users/jacop/Documents/ingegneria informatica/3_Anno/PrimoSemestre/IndustrialInformatics/MyCode/cmake-build-debug/CMakeFiles/es1.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/es1.dir/depend


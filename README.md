# C++ Projects Template

This is a template for C++ projects using CMake as the build system. It includes configurations for building, testing, and adding libraries.

## Project Structure

- `.vscode/: ` - VSCode configurations for C++ extension. Change the `compilerPath` and `intelliSenseMode` to match your system.
- `build/`: CMake build directory (generated after running the build script).
- `include/`: Put the header files for your own project here if you're making a library. Or you can put external libraries here.
- `lib/`: Internal libraries
- `scripts/`: Scripts to build and run the project.
- `src/`: Source files for your project.
- `test/`: Unit tests for your project using Google Test framework.
- `CMakeLists.txt`: CMake configuration file for the project.
- `CPPLINT.cfg`: Configuration file for cpplint (code style checker).

## Getting Started

### Prerequisites

Replace every occurence of `PROJECT_NAME` in the files with your desired project name.

### Run the code

You can run the `scripts/run.sh` (or `.ps1` if on Windows) script to generate the CMake files, build the project, and run the executable.

## Expanding the Project

### Adding a library

1. Add it to inlude path

```

"${workspaceFolder}/lib/file_reader/include"

```

2. Add source files to `CMakeLists.txt`

**Header only library:**

```cmake
add_library(file_reader INTERFACE)

target_include_directories(NAME INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

**Library with source files:**

```cmake
file(GLOB FILE_READER_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

add_library(file_reader STATIC ${FILE_READER_SOURCES})

target_include_directories(file_reader PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

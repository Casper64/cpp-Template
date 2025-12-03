# C++ Projects Template

This is a template for C++ projects using CMake as the build system. It includes configurations for building, testing, and adding libraries.

## Features

- CMake build system
- Google Test framework for unit testing
- Pre-commit hooks for code quality checks (cpplint, clang-format, etc.)
- (Simple) Cross-platform build scripts for Linux/MacOS and Windows

## Getting Started

### Prerequisites

Replace every occurence of `PROJECT_NAME` in the files with your desired project name.

- Install a C++ compiler (GCC, Clang, or MSVC).
- Install CMake (version 3.10 or higher).
- Install GTest for testing

### Run the code

You can run the `scripts/sh/run.sh` (or `scripts\ps\run.ps1` if on Windows) script to generate the CMake files, build the project, and run the executable.

This project contains scripts for building, running, and testing the project. You can find them in the `scripts/sh/` (for Linux/MacOS) and `scripts/ps/` (for Windows) directories.

See [Expanding the Project](#expanding-the-project) for instructions on adding libraries and unit tests.

## Project Structure

- `.vscode/: ` - VSCode configurations for C++ extension. Change the `compilerPath` and `intelliSenseMode` to match your system.
- `build/`: CMake build directory (generated after running the build script).
- `include/`: Put the header files for your own project here if you're making a library. Or you can put external libraries here.
- `lib/`: Internal libraries
- `scripts/`: Scripts to build and run the project.
- `src/`: Source files for your project.
- `test/`: Unit tests for your project using Google Test framework.
- `.pre-commit-config.yaml`: Configuration file for pre-commit hooks.
- `CMakeLists.txt`: CMake configuration file for the project.
- `CPPLINT.cfg`: Configuration file for cpplint (code style checker).

## Workflow

I've used [pre-commit](https://pre-commit.com/) to manage code quality checks. The following hooks are included:

- `cpplint`: Checks C++ code style.
- `clang-format`: Formats C++ code according to a specified style.
- General stuff like checking YAML, file endings and trailing whitespace etc.

Install pre commit and run the following command to set up the git hooks:

```bash
pre-commit install
```

All checks are run automatically before each commit and you need to fix any issues reported by the hooks before you can commit your changes.

To locally test the hooks without committing, run:

```bash
pre-commit run --all-files
```

If you want to skip the pre-commit hooks for a specific commit, use the `--no-verify` flag:

```bash
git commit -m "Your commit message" --no-verify
```

## Expanding the Project

See [lib/README.md](lib/README.md) for instructions on adding libraries and [test/README.md](test/README.md) for instructions on adding unit tests.

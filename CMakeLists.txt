cmake_minimum_required(VERSION 3.26)
project(PROJECT_NAME CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Add include directories
include_directories(
    ${PROJECT_SOURCE_DIR}/include
)

# Add any libraries below
add_subdirectory(lib/header_only)
add_subdirectory(lib/source_files)

# Add the executable
add_executable(PROJECT_NAME src/main.cpp)

target_include_directories(PROJECT_NAME PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

# Link any libraries:
target_link_libraries(PROJECT_NAME PRIVATE header_only)
target_link_libraries(PROJECT_NAME PRIVATE source_files)

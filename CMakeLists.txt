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
target_link_libraries(PROJECT_NAME PRIVATE
    header_only
    source_files
)

# Enable testing
# ===========================
enable_testing()

# Link optional source files as libraries
add_library(project_lib src/project_name.cpp)

# Add test sources
file(GLOB TEST_SOURCES "tests/*.cpp")

# require gtest
find_package(GTest REQUIRED)

add_executable(runTests ${TEST_SOURCES})

target_include_directories(runTests PUBLIC
    ${PROJECT_SOURCE_DIR}/include
)

# Link Gtest and other libraries
target_link_libraries(runTests PRIVATE
    project_lib
    GTest::gtest
    GTest::gtest_main
)

# Add test
add_test(NAME runTests COMMAND runTests)

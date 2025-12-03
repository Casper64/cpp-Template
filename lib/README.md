#

## Adding a library

In this section replace `LIB_NAME` with the name of your library

1. Add it to include path in `.vscode/c_cpp_properties.json`:

```
"${workspaceFolder}/lib/LIB_NAME/include"
```

And to `browse` section in `.vscode/c_cpp_properties.json`:

```
"${workspaceFolder}/lib/LIB_NAME"
```

2. Add source files to `CMakeLists.txt`

**Header only library:**

```cmake
add_library(LIB_NAME INTERFACE)

target_include_directories(LIB_NAME INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

**Library with source files:**

```cmake
file(GLOB LIB_NAME_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

add_library(LIB_NAME STATIC ${LIB_NAME_SOURCES})

target_include_directories(LIB_NAME PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
```

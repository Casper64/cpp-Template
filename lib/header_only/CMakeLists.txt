add_library(header_only INTERFACE)

target_include_directories(header_only INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

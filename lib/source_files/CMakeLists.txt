file(GLOB SOURCE_FILES_SOURCES "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")

add_library(source_files STATIC ${SOURCE_FILES_SOURCES})

target_include_directories(source_files PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

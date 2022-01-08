cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

add_library(libsox INTERFACE)
add_subdirectory(third/sox)
target_include_directories(libsox INTERFACE ${SOX_INCLUDE_DIR})
target_link_libraries(libsox INTERFACE ${SOX_LIBRARIES})

message("sox libraries: " ${SOX_LIBRARIES})

add_library(native_add
            SHARED
            ../ios/Classes/native_add.cpp)
target_link_libraries(native_add libsox)

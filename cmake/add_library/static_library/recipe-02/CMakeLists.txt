cmake_minimum_required( VERSION 3.15 )

project(hello-world LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message( STATUS "CMAKE_PROJECT_NAME = ${CMAKE_PROJECT_NAME}" )
message( STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}" )

add_subdirectory(lib)

add_executable(hello-world hello-world.cpp)
target_include_directories(hello-world PRIVATE lib)
target_link_libraries(hello-world message)

cmake_minimum_required( VERSION 3.15 )

project ( gflags_demo_project LANGUAGES CXX )

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message( STATUS "CMAKE_PROJECT_NAME = ${CMAKE_PROJECT_NAME}" )
message( STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}" )

add_executable( gflags_demo main.cpp )
target_include_directories( gflags_demo PRIVATE ${GFLAGS_DIR}/include )
target_link_directories( gflags_demo PRIVATE ${GFLAGS_DIR}/lib )
target_link_libraries( gflags_demo gflags pthread)

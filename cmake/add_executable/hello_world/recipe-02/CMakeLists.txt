cmake_minimum_required( VERSION 3.15 )

project ( gflags_demo_project LANGUAGES CXX )

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message( STATUS "CMAKE_PROJECT_NAME = ${CMAKE_PROJECT_NAME}" )
message( STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}" )

include_directories( ${GFLAGS_DIR}/include )
link_directories( ${GFLAGS_DIR}/lib )

add_executable( gflags_demo main.cpp )
target_link_libraries( gflags_demo gflags pthread)

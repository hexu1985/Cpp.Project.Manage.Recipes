cmake_minimum_required( VERSION 3.15 )

project ( timer_demo_project LANGUAGES CXX )

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

message( STATUS "CMAKE_PROJECT_NAME = ${CMAKE_PROJECT_NAME}" )
message( STATUS "PROJECT_SOURCE_DIR = ${PROJECT_SOURCE_DIR}" )

file(GLOB SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp ${CMAKE_CURRENT_SOURCE_DIR}/src/*.hpp)
file(GLOB PROGRAMS_SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/examples/*.cpp)

FOREACH (src_file ${PROGRAMS_SOURCES})
    get_filename_component(exe_file ${src_file} NAME_WLE)
    add_executable(${exe_file} ${src_file} ${SOURCES})
    target_include_directories(${exe_file} PRIVATE src)
    target_link_libraries(${exe_file} pthread)
ENDFOREACH()

cmake_minimum_required(VERSION 3.20)

set(project_name mttmath)
set(project_version 1.0.0)

set(MTTMATH_TEST OFF CACHE BOOL "If on build test target")

project(${project_name}
        VERSION ${project_version}
        DESCRIPTION "Collections of math utilities"
        #[HOMEPAGE_URL <url-string>]
        LANGUAGES CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/dependencies.cmake)

add_library(mttmath)
target_include_directories(mttmath
    PUBLIC
    ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_sources(mttmath
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/src/vec2.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/trig.cpp
        ${CMAKE_CURRENT_SOURCE_DIR}/src/rand.cpp
)


if(MTTMATH_TEST)
    include(${CMAKE_CURRENT_SOURCE_DIR}/cmake/tests.cmake)
endif()

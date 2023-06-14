if(NOT MTTMATH_TEST)
    return()
endif()

find_package(Catch2)

set(tests_path "${CMAKE_CURRENT_SOURCE_DIR}/tests/")
add_executable(tests
    ${tests_path}/vec2.cpp)
target_link_libraries(tests
    PUBLIC
        ${project_name}
        Catch2::Catch2WithMain)

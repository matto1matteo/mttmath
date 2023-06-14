include(FetchContent)

function(add_dependency dep url version)
    message(STATUS "Dep Name: ${dep}")
    message(STATUS "Dep URL: ${url}")
    message(STATUS "Dep Version: ${version}")
    FetchContent_Declare(
        ${dep}
        GIT_REPOSITORY ${url}
        GIT_TAG ${version}
        OVERRIDE_FIND_PACKAGE
    )
endfunction(add_dependency)

# TEST dependencies
if(MTTMATH_TEST)
    add_dependency("catch2" "https://github.com/catchorg/Catch2.git" "v3.3.2")
endif()

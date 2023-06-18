# mttmath

The following is a collection of math utilities like two dimension vector or
random number generator using std lib.

To build this library or to use it [CMake](https://cmake.org/) is required.

## Build tests

To build test executable, simply run the following command:

```bash
cd <mttmath-dir>
cmake -DMTTMATH_TEST:BOOL=ON -S . -B <build-dir>
```

where `<mttmath-dir>` is the directory containing this repo and `<build-dir>` is
a directory where the executables and library ends up.

To run configured tests, build the target and run it.

```bash
cmake --build <build-dir>
./<build-dir>/tests
```

## Include with FetchContent

To use the library inside your project, simply use the FetchContent utitlities
by CMAKE:

```cmake
FetchContent_Declare(
    mttmath
    GIT_REPOSITORY https://github.com/matto1matteo/mttmath
    GIT_TAG <version> # e.g. 1.0.0
    OVERRIDE_FIND_PACKAGE
)
```

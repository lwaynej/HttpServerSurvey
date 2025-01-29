
cmake_minimum_required(VERSION 3.23)

# Updated to use the target version used by the vs code plugin. The plugin does
# not set the required or extensions flag for either C or CXX.
set(CMAKE_CXX_STANDARD          17)
set(CMAKE_CXX_STANDARD_REQUIRED OFF)
set(CMAKE_CXX_EXTENSIONS        ON)

# Use C-99
set(CMAKE_C_STANDARD          11)
set(CMAKE_C_STANDARD_REQUIRED OFF)
set(CMAKE_C_EXTENSIONS        ON)

project(pico-esc C CXX ASM)

# This adds a custom build target to copy the compile_commands.json into the
# root directory.
include(${CMAKE_CURRENT_LIST_DIR}/cmake/generate_compile_commands.cmake)


# Pull in the source directory. This includes the SDK and other 3rd party
# libraries.
add_subdirectory(src)
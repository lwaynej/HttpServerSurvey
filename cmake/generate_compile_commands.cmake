# message(STATUS ">>>> This should build the compile_commands.json file.")
# Generate compile_commands.json. This is useful for many editors and tools
set(CMAKE_EXPORT_COMPILE_COMMANDS TRUE)

# By default, compile_commands.json get generated in whatever build directory
# is configured for the current build type. VS Code and other tools want to look
# for it in a fixed location. This copies the file to the root directory after the build step.
if (CMAKE_EXPORT_COMPILE_COMMANDS)
  add_custom_target(copy_compile_commands ALL
          COMMAND ${CMAKE_COMMAND} -E copy_if_different
          ${CMAKE_BINARY_DIR}/compile_commands.json
          ${CMAKE_SOURCE_DIR}/compile_commands.json
          DEPENDS ${CMAKE_BINARY_DIR}/compile_commands.json
  )
endif()

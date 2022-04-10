# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\cpp_integration_example_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\cpp_integration_example_autogen.dir\\ParseCache.txt"
  "cpp_integration_example_autogen"
  )
endif()

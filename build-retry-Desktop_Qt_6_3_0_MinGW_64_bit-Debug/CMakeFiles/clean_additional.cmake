# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\retry_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\retry_autogen.dir\\ParseCache.txt"
  "retry_autogen"
  )
endif()

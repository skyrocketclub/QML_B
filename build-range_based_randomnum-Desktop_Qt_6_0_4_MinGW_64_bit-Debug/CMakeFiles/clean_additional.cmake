# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\range_based_randomnum_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\range_based_randomnum_autogen.dir\\ParseCache.txt"
  "range_based_randomnum_autogen"
  )
endif()

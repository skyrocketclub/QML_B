# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Dynamically_created_numpad_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Dynamically_created_numpad_autogen.dir\\ParseCache.txt"
  "Dynamically_created_numpad_autogen"
  )
endif()

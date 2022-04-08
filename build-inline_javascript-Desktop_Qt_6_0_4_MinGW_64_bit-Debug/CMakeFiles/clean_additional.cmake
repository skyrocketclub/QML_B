# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\inline_javascript_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\inline_javascript_autogen.dir\\ParseCache.txt"
  "inline_javascript_autogen"
  )
endif()

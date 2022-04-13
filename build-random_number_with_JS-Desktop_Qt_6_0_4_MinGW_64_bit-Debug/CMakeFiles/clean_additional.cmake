# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\random_number_with_JS_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\random_number_with_JS_autogen.dir\\ParseCache.txt"
  "random_number_with_JS_autogen"
  )
endif()

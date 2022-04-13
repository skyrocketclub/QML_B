# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Number_Converter_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Number_Converter_autogen.dir\\ParseCache.txt"
  "Number_Converter_autogen"
  )
endif()

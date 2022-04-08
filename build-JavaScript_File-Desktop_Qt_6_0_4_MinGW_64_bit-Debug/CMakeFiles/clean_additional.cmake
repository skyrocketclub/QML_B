# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\JavaScript_File_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\JavaScript_File_autogen.dir\\ParseCache.txt"
  "JavaScript_File_autogen"
  )
endif()

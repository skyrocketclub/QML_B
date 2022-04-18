# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Vocabulary_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Vocabulary_autogen.dir\\ParseCache.txt"
  "Vocabulary_autogen"
  )
endif()

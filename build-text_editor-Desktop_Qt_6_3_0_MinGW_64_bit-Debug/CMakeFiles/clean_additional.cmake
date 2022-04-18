# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\text_editor_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\text_editor_autogen.dir\\ParseCache.txt"
  "text_editor_autogen"
  )
endif()

# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\call_cpp_from_qml_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\call_cpp_from_qml_autogen.dir\\ParseCache.txt"
  "call_cpp_from_qml_autogen"
  )
endif()

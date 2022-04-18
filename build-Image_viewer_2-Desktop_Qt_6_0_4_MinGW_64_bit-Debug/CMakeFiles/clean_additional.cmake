# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Image_viewer_2_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Image_viewer_2_autogen.dir\\ParseCache.txt"
  "Image_viewer_2_autogen"
  )
endif()

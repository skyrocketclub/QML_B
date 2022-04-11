# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\custom_image_button_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\custom_image_button_autogen.dir\\ParseCache.txt"
  "custom_image_button_autogen"
  )
endif()

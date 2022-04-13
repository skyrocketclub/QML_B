# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Owner_drawn_ComboBox_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Owner_drawn_ComboBox_autogen.dir\\ParseCache.txt"
  "Owner_drawn_ComboBox_autogen"
  )
endif()

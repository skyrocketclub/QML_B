# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\owner_draw_listview_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\owner_draw_listview_autogen.dir\\ParseCache.txt"
  "owner_draw_listview_autogen"
  )
endif()

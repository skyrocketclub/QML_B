# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Random_Dinner_Application_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Random_Dinner_Application_autogen.dir\\ParseCache.txt"
  "Random_Dinner_Application_autogen"
  )
endif()

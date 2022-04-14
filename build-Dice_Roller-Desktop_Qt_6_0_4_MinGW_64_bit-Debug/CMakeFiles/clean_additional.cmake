# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\Dice_Roller_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\Dice_Roller_autogen.dir\\ParseCache.txt"
  "Dice_Roller_autogen"
  )
endif()

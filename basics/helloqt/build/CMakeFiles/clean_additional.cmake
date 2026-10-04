# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appHello_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appHello_autogen.dir/ParseCache.txt"
  "CMakeFiles/appHelloq_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appHelloq_autogen.dir/ParseCache.txt"
  "CMakeFiles/appHelloqplugin_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appHelloqplugin_autogen.dir/ParseCache.txt"
  "appHello_autogen"
  "appHelloq_autogen"
  "appHelloqplugin_autogen"
  )
endif()

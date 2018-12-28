cmake_minimum_required (VERSION 3.0)

project(<++>)

file (GLOB PROJECT_SOURCE
	"src/*.cpp"
	"src/*.h"
	)

set( CMAKE_EXPORT_COMPILE_COMMANDS ON )
add_executable(<++> ${PROJECT_SOURCE})

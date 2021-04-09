# This file is to add source files and include directories
# into variables so that it can be reused from different repositories
# in their Cmake based build system by including this file.
#
# Files specific to the repository such as test runner, platform tests
# are not added to the variables.

# Library source files.
set( ESP_CLI_SOURCES
     "${CMAKE_CURRENT_LIST_DIR}/cli.c"
     "${CMAKE_CURRENT_LIST_DIR}/cmd_create.c"
     "${CMAKE_CURRENT_LIST_DIR}/cmd_run.c")

# Library Public Include directories.
set( ESP_CLI_INCLUDE_PUBLIC_DIRS
     "${CMAKE_CURRENT_LIST_DIR}/commands"
     "${CMAKE_CURRENT_LIST_DIR}/include"
     "${CMAKE_CURRENT_LIST_DIR}")
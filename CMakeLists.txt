set(includes)
set(srcs)
set(priv_includes)

include(${CMAKE_CURRENT_LIST_DIR}/espcliFilePaths.cmake)

list(APPEND includes ${ESP_CLI_INCLUDE_PUBLIC_DIRS})

list(APPEND srcs ${ESP_CLI_SOURCES})
				  
idf_component_register(SRCS "${srcs}"
                       INCLUDE_DIRS "${includes}"
                       PRIV_INCLUDE_DIRS ""
                       REQUIRES "")
					   
add_definitions(-DCONFIG_CLI_ENABLED=1)
add_definitions(-DCONFIG_CLI_TASK_NAME="cli")
add_definitions(-DCONFIG_CLI_TASK_STACK=2048)
add_definitions(-DCONFIG_CLI_TASK_PRI=1)
add_definitions(-DCONFIG_CLI_MAX_LEN=128)
add_definitions(-DCONFIG_CLI_AUTOCOMPLETE_ENABLED=1)
add_definitions(-DCONFIG_CLI_USE_BUILTIN_COMMANDS=1)
add_definitions(-DCONFIG_CLI_USE_CMD_SYSTEM=1)
add_definitions(-DCONFIG_CLI_HISTORY_LEN=64)
add_definitions(-DCONFIG_CLI_HISTORY_ENABLED=1)
add_definitions(-DCONFIG_CLI_ANSI_ESCAPE_CODE_ENABLED=1)
 

target_linker_script(${COMPONENT_LIB} INTERFACE "cli.ld")

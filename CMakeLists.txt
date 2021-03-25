
set(component_srcs "cli.c"
                    "cmd_create.c"
                    "cmd_run.c")

set(include_files "../esp32S2-CLI/"
                  "../esp32S2-CLI/include"
                   "../esp32S2-CLI/commands"
                   )
                                   
idf_component_register(SRCS "${component_srcs}"
                       INCLUDE_DIRS "${include_files}"
                       PRIV_INCLUDE_DIRS ""
                       REQUIRES "")

target_linker_script(${COMPONENT_LIB} INTERFACE "cli.ld")

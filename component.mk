COMPONENT_ADD_INCLUDEDIRS := include

COMPONENT_SRCDIRS += commands

COMPONENT_ADD_LDFLAGS := -Wl,-whole-archive -l$(COMPONENT_NAME) -Wl,-no-whole-archive
COMPONENT_ADD_LINKER_DEPS := cli.ld

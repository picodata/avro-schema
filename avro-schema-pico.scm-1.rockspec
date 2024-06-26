package = "avro-schema"
version = "pico.scm-1"
source = {
	url = "git+https://github.com/picodata/avro-schema",
	branch = "master",
}
description = {
	summary = "Apache Avro schema tools for Tarantool",
	homepage = "https://github.com/picodata/avro-schema",
	license = "BSD",
}
dependencies = {
	"lua >= 5.1",
}
external_dependencies = {
	TARANTOOL = {
		header = "tarantool/module.h",
	},
}
build = {
	type = "cmake",
	variables = {
		TARANTOOL_DIR = "$(TARANTOOL_DIR)",
		CMAKE_BUILD_TYPE = "RelWithDebInfo",
		TARANTOOL_INSTALL_LIBDIR = "$(LIBDIR)",
		TARANTOOL_INSTALL_LUADIR = "$(LUADIR)",
	},
}

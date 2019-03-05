package = "lua_gd"
version = "1.0-1"
source = {
    url = "git://github.com/zs-soft/lua-gd.git",
    branch = "master"
}
description = {
    summary = "A lua-gd library install package with luarocks",
    homepage = "https://github.com/zs-soft/lua-gd",
    license = "MIT"
}
dependencies = {}
build = {
    type = "builtin",
    modules = {
        type = "make",
        build_variables = {
            CFLAGS="$(CFLAGS)",
            LIBFLAG="$(LIBFLAG)",
            LUA_LIBDIR="$(LUA_LIBDIR)",
            LUA_BINDIR="$(LUA_BINDIR)",
            LUA_INCDIR="$(LUA_INCDIR)",
            LUA="$(LUA)",
        },
        install_variables = {
            INST_PREFIX="$(PREFIX)",
            INST_BINDIR="$(BINDIR)",
            INST_LIBDIR="$(LIBDIR)",
            INST_LUADIR="$(LUADIR)",
            INST_CONFDIR="$(CONFDIR)",
        },
    }
}
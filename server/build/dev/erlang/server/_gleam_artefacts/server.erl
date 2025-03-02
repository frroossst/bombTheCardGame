-module(server).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([main/0]).

-file("src/server.gleam", 14).
-spec main() -> nil.
main() ->
    _ = gleam_stdlib:print(<<"Hello, world!"/utf8>>).

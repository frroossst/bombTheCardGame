-module(client).
-compile([no_auto_import, nowarn_unused_vars, nowarn_unused_function, nowarn_nomatch]).

-export([main/0]).

-file("src/client.gleam", 3).
-spec main() -> nil.
main() ->
    gleam_stdlib:println(<<"Hello from client!"/utf8>>).

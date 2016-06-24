% Erlang R16B02 (erts-5.10.3)

-module(erl).
-export([start/0]).

start() ->
    io:fwrite("Hello, world!\n").

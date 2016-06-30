% Erlang R16B02 (erts-5.10.3)

-module(erl).
-export([start/0]).

start() ->
  List = lists:filter(
           fun(X) ->
               if
                 X rem 3 =:= 0 -> true;
                 X rem 5 =:= 0 -> true;
                 true -> false
               end
           end, lists:seq(0, 999)),
  Result = lists:foldl(fun(X, Sum) -> X + Sum end, 0, List),
  io:format("~p", [Result]).

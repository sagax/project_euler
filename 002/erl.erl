% Erlang/OTP 21 [erts-10.2.3]

-module(erl).
-export([fn_sum/4, start/0]).

fn_sum(A, B, Limit, Summ) ->
  C = A+B,
  case C of
    C when C > Limit -> Summ;
    C when C rem 2 == 0 -> fn_sum(B, C, Limit, (Summ+C));
    _ -> fn_sum(B, C, Limit, Summ)
  end.

start() ->
  S = fn_sum(0, 1, 4000000, 0),
  io:fwrite("~p", [S]).

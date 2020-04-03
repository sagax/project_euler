% Erlang R16B02 (erts-5.10.3)
% Erlang/OTP 19 [erts-8.1]
% Erlang/OTP 21 [erts-10.2.3]

-module(erl).
-export([fn_sum/2, start/0]).

fn_sum(A, B) when A == 0 -> B;
fn_sum(A, B) when A rem 3 == 0 -> fn_sum(A-1, B+A);
fn_sum(A, B) when A rem 5 == 0 -> fn_sum(A-1, B+A);
fn_sum(A, B) when A > 0 -> fn_sum(A-1, B).

start() ->
  S = fn_sum(999, 0),
  io:fwrite("~p", [S]).


-module(display_e).
-export([e/1]).

% Compute the factorial of the given number
factorial(0) -> 1;
factorial(N) -> N * factorial(N-1).

% Compute the sum of the first N terms
sum_e(0, _) -> 1;
sum_e(N, X) -> math:pow(X, N) / factorial(N) + sum_e(N-1, X).

% Compute the value of e using the series expansion with 10 terms
e(X) ->
    Result = sum_e(10, X),
    io:format("The value of e^~p is: ~p~n", [X, Result]).

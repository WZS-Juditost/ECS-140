-module(find_roots).
-export([find_root/2]).

% Use Newton Raphson's method to find the root
newtons_method(F, FPrime, X0) ->
    X1 = X0 - F(X0) / FPrime(X0),
    if abs(X1 - X0) < 0.0001 ->
        X1;
    true ->
        newtons_method(F, FPrime, X1)
    end.

% The quadratic equation
f(X) -> X*X + 3*X + 2.

% The derivative of the quadratic equation
f_prime(X) -> 2*X + 3.

% Main part of the function
find_root(X1, X2) ->
    Root1 = newtons_method(fun f/1, fun f_prime/1, X1),
    Root2 = newtons_method(fun f/1, fun f_prime/1, X2),

    % Print the result
    io:format("The roots of the equation x^2 + 3x + 2 = 0 are:~n"),
    io:format("  Root 1: ~p~n", [Root1]),
    io:format("  Root 2: ~p~n", [Root2]).

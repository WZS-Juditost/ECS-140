-module(prime_factors).
-export([find_prime_factors/1]).

% Check if I is a positive integer.
find_prime_factors(I) when is_integer(I), I > 0 ->
    find_prime_factors(I, 2, []).

% Base rule.
find_prime_factors(1, _, Factors) ->
    Factors;

% Check if Div is a factor of I.
find_prime_factors(I, Div, Factors) ->
    case I rem Div of
        0 ->
            NewFactors = [Div | Factors],
            find_prime_factors(I div Div, Div, NewFactors);
        _ ->
            find_prime_factors(I, Div + 1, Factors)
    end.

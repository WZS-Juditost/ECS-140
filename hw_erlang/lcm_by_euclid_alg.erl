-module(lcm_by_euclid_alg).
-export([lcm/2]).

% Check if the inputs are integers and find the lcm.
lcm(A, B) when is_integer(A), is_integer(B), A > 0, B > 0 ->
    GCD = gcd(A, B),
    Result = A * B div GCD,
    io:format("The lcm of ~w and ~w is ~w~n", [A, B, Result]).

% Euclid's algorithm.
gcd(A, B) ->
    case B of
        0 ->
            A;
        _ ->
            gcd(B, A rem B)
    end.

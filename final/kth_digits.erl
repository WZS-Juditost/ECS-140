-module(kth_digits).
-export([kth_digit/2]).

% Return 0 for invalid inputs
kth_digit(N, K) when N < 0; N >= 1000; K < 1 ->
    0;
% If K = 1, return the rightmost digit of N
kth_digit(N, K) when K == 1 ->
    N rem 10;

% Divide N by 10 and decrement K by 1 until K = 1, then return the kth digit from the right of N
kth_digit(N, K) ->
    kth_digit(N div 10, K-1).

-module(euclidean_distance).
-export([find_euclidean_distance/2]).

% The function to find the euclidean distance is sqrt((X2 - X1)^2 + (Y2 - Y1)^2)
find_euclidean_distance({X1, Y1}, {X2, Y2}) ->
    Distance = math:sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1)),
    io:format("The Euclidean distance between (~w,~w) and (~w,~w) is ~w~n", [X1, Y1, X2, Y2, Distance]).

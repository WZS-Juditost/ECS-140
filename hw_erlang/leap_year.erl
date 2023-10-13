-module(leap_year).
-export([is_leap_year/1]).

is_leap_year(year) ->
    case ((year rem 4 == 0) andalso (year rem 100 /= 0)) orelse (year rem 400 == 0) of
        true -> io:format("~w is a leap year.~n", [year]);
        false -> io:format("~w is not a leap year.~n", [year])
    end.

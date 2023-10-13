-module(mean_median_mode).
-export([mmm/1]).

% Find the mean by dividing the sum of the list by the length of the list
mean(Num_List) ->
    lists:sum(Num_List) / length(Num_List).

% Find the median
median(Num_List) ->
    Sorted_List = lists:sort(Num_List),
    Len = length(Sorted_List),
    Mid = Len div 2,

    % Two situations
    case Len rem 2 of

        % When the remainder is 0, the median is (mid+(mid+1))/2 
        0 -> (lists:nth(Mid, Sorted_List) + lists:nth(Mid+1, Sorted_List)) / 2;

        % When the remainder is 1, the median is mid
        1 -> lists:nth(Mid+1, Sorted_List)
    end.

% Find the mode
mode(Num_List) ->

    % Using map to map each number and its frequency
    FindFreq = lists:foldl(
        fun (Num, Map) -> maps:update_with(Num, fun (Old) -> Old + 1 end, 1, Map) end,
        #{},
        Num_List
    ),

    % Find the greatest frequency and return the number associated to that frequency
    MaxFreq = maps:fold(
        fun (_, CurrFreq, Max) -> 
            if CurrFreq > Max -> 
                CurrFreq; 
            true -> 
                Max 
            end 
        end,
        0,
        FindFreq
    ),

    % Add all numbers with the highest frequency to Modes
    lists:sort(
        maps:fold(
            fun (Num, Freq, Modes) ->
                case Freq of
                    MaxFreq -> [Num | Modes];
                    _ -> Modes
                end
            end,
            [],
            FindFreq
        )
    ).

% Call each function recursively and print the result
mmm(Num_List) ->
    Mean = mean(Num_List), Median = median(Num_List), Mode = mode(Num_List),
    io:format("Mean is: ~p~nMedian is: ~p~nMode: ~p~n", [Mean, Median, Mode]).

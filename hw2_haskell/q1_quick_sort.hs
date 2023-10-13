-- Quicksort: read in a list of integers separated by spaces and sort them into an ordered list
quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (first:rest) = (quickSort [x | x <- rest, x < first]) ++ [first] ++ quickSort [x | x <- rest, x == first] ++ quickSort [x | x <- rest, x > first]

main :: IO ()
main = do

  putStrLn "Enter a list of integers, separated by spaces: "
  input <- getLine
  let numberList = map read (words input) :: [Int]
  let sortedList = quickSort numberList
  putStrLn $ "The sorted list is: " ++ show sortedList
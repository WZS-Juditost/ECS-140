sortDescending :: [Int] -> [Int]
sortDescending [] = []
sortDescending [x] = [x]
sortDescending xs = mergeSort (sortDescending firstHalf) (sortDescending secondHalf)
  where (firstHalf, secondHalf) = splitAt (length xs `div` 2) xs

mergeSort :: [Int] -> [Int] -> [Int]
mergeSort xs [] = xs
mergeSort [] ys = ys
mergeSort (x:xs) (y:ys)
  | x >= y = x : mergeSort xs (y:ys)
  | otherwise = y : mergeSort (x:xs) ys

main :: IO ()
main = do
  putStrLn "Enter a list of integers, separated by spaces: "
  input <- getLine
  let numList = map read (words input) :: [Int]
  let sortedNums = sortDescending numList
  putStrLn $ "The sorted list in descending order is: " ++ show sortedNums
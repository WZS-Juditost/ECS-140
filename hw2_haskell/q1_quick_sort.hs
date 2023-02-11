quickSort :: [Int] -> [Int]
quickSort [] = []
quickSort (first:rest) = (quickSort [x | x <- rest, x <= first]) ++ [first] ++ quickSort [x | x <- rest, x >= first]

main :: IO ()
main = do
  let nums = [4, 6, 9, 8, 3, 5, 1, 7, 2]
  putStrLn $ "The sorted list is: " ++ show (quickSort nums)

  let nums = []
  putStrLn $ "The sorted list is: " ++ show (quickSort nums)

  let nums = [56, 98, 43, 12, 67, 34, 23, 78, 89, 100, 1, 45, 29, 76, 92, 47, 18, 25, 64, 15]
  putStrLn $ "The sorted list is: " ++ show (quickSort nums)

  let nums = [1, 32, 6, 42, 23, 35, 17, 22, 15, 40, 18, 26, 48, 29, 33, 49, 38, 44, 31, 50, 13, 19, 28, 47, 37, 8, 20, 12, 36, 21, 24, 45, 39, 46, 7, 43, 27, 10, 11, 4, 14, 25, 5, 3, 2, 9, 16, 41, 30, 34, 51, 5, 29, 12, 50, 46, 7, 20]
  putStrLn $ "The sorted list is: " ++ show (quickSort nums)

  putStrLn $ "The sorted list is: " ++ show (quickSort [4, 6, 9, 8, 3, 5, 1, 7, 2])
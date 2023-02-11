factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

permutations :: Integer -> Integer -> Integer
permutations n k = factorial n `div` factorial (n - k)

combinations :: Integer -> Integer -> Integer
combinations n k = permutations n k `div` factorial k

main :: IO ()
main = do
  
  let n = 5
  let k = 3
  putStrLn $ "The permutations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (permutations n k)
  putStrLn $ "The combinations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (combinations n k)
  putStrLn ""

  let n = 8
  let k = 4
  putStrLn $ "The permutations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (permutations n k)
  putStrLn $ "The combinations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (combinations n k)
  putStrLn ""

  let n = 7
  let k = 2
  putStrLn $ "The permutations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (permutations n k)
  putStrLn $ "The combinations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show (combinations n k)
  putStrLn ""
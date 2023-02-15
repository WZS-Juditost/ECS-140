factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

permutations :: Integer -> Integer -> Integer
permutations n k = factorial n `div` factorial (n - k)

combinations :: Integer -> Integer -> Integer
combinations n k = permutations n k `div` factorial k

main :: IO ()
main = do

  putStrLn "Enter an integer for n: "
  n <- readLn :: IO Integer
  putStrLn "Enter an integer for k: "
  k <- readLn :: IO Integer
  let c = combinations n k
  let p = permutations n k
  
  putStrLn $ "The permutations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show p
  putStrLn $ "The combinations of " ++ show n ++ " and " ++ show k ++ " is: " ++ show c

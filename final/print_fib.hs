fib :: Int -> Int
fib n
    -- return 0 if n is less than or equal to 0
    | n <= 0 = 0

    -- return 1 if n is equal to 1
    | n == 1 = 1

    -- compute the nth Fib num by summing the two previous recursivly
    | otherwise = fib (n - 1) + fib (n - 2)

-- Main function
main :: IO ()
main = do
  putStrLn "The first 20 Fibonacci numbers are: "
  mapM_ (print . fib) [1 .. 20]

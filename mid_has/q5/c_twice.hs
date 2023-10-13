square :: Num a => a -> a
square x = x * x

twice :: (a -> a) -> a -> a
twice f x = f (f x)

main :: IO ()
main = do
  putStrLn "Enter a number: "
  input <- readLn :: IO Double
  let result = twice square input
  putStrLn $ "The result is: " ++ show result

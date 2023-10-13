-- function a(), read from cmd and retruns an integer
a :: IO Integer
a = do
    putStrLn "Enter an integer for a: "
    input <- getLine
    return (read input :: Integer)

-- function b(), read from cmd and retruns an integer
b :: IO Integer
b = do
    putStrLn "Enter an integer for b: "
    input <- getLine
    return (read input :: Integer)

-- square function
square :: Integer -> Integer
square x = x * x

main :: IO ()
main = do
    intA <- a
    intB <- b
    let result = square (intA + intB)
    putStrLn $ "The result of square( " ++ show intA ++ " + " ++ show intB ++ " ) is: " ++ show result

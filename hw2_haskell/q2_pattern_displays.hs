import Data.List

printStar :: Int -> [Char]
printStar n = replicate n '*'

addSpace :: Int -> [Char]
addSpace n = replicate (2 - (n - 1) `div` 2) ' ' ++ printStar n ++ replicate (2 - (n - 1) `div` 2) ' '

printPattern :: String
printPattern = unlines $ map addSpace [1, 3 .. 5] ++ map addSpace [3, 1]

main :: IO ()
main = putStrLn printPattern


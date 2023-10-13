import Data.List

-- take in an integer n, print n asterisks
printStar :: Int -> [Char]
printStar n = replicate n '*'

-- take in an integer n, add spaces corresponding to n on both sides
addSpace :: Int -> [Char]
addSpace n = replicate (2 - (n - 1) `div` 2) ' ' ++ printStar n ++ replicate (2 - (n - 1) `div` 2) ' '

-- make function calls multiple times, print the result
printPattern :: String
printPattern = unlines $ map addSpace [1, 3, 5] ++ map addSpace [3, 1]

main :: IO ()
main = putStrLn printPattern


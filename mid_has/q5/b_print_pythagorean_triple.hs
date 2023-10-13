import Control.Monad

printPythagoreanTriple :: Int -> [(Int, Int, Int)]
printPythagoreanTriple n = [(x, y, z) | x <- [1..n], y <- [x..n], z <- [y..n], x^2 + y^2 == z^2]

main :: IO ()
main = do
  putStrLn "Enter an integer n: "
  input <- getLine
  let n = read input :: Int
  let triples = printPythagoreanTriple n
  putStrLn "The Pythagorean triples are: "
  forM_ triples $ \(x, y, z) -> putStrLn $ show x ++ "^2 + " ++ show y ++ "^2 = " ++ show z ++ "^2"

import Text.Printf

piCalc :: Double -> Double
piCalc x = 2 * sqrt (2) / x

piHelper :: Double -> Double -> Int -> Double
piHelper x result n
  | n == 0 = result
  | otherwise = piHelper x (piCalc result) (n - 1)

thepi :: Int -> Double
thepi n = piHelper (sqrt 0.5) (sqrt (0.5 + 0.5 * sqrt 0.5)) n

main :: IO ()
main = printf "%.8f\n" (thepi 8)

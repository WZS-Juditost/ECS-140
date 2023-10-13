import Data.Fixed (mod')

baseTerm :: Double -> Double
baseTerm x = sqrt (0.5 + 0.5 * sqrt x)

findPi :: Double -> Double -> Double
findPi x precision
  | nextValue > precision = nextValue
  | otherwise = nextValue * findPi nextValue precision
  where
    nextValue = baseTerm x


main :: IO ()
main = do
  let precision = 3.14159265
  let initialValue = 0.5
  let piApprox = findPi initialValue precision
  print piApprox

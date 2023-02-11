import Control.Monad.Cont

starRow :: Int -> String
starRow n = replicate ((5 - n) `div` 2) ' ' ++ replicate (2 * n - 1) '*' ++ replicate ((5 - n) `div` 2) ' '

starPattern :: [String]
starPattern = runCont (Cont $ \k -> forM [1,3..5] $ \n -> k (starRow n)) id

main :: IO ()
main = mapM_ putStrLn (starPattern ++ reverse (init starPattern))

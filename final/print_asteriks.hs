printPattern :: Int -> Int -> IO ()
printPattern row maxNumRow

    -- When the row number is greater than the max num of rows, stop
    | row > maxNumRow = return ()

    -- Print the spaces according to curr row number, then print asterisks arrcorrding to max num of rows - row num
    | otherwise = do
        putStrLn $ replicate (row - 1) ' ' ++ replicate (maxNumRow - row + 1) '*'
        printPattern (row + 1) maxNumRow

-- Main function
main :: IO ()
main = do
  printPattern 1 5

import System.IO
import Control.Monad

main=do
    text1 <- readFile "text1.txt"
    text2 <- readFile "text2.txt"
    let lines1 = lines text1
        lines2 = lines text2
    forM_ (zip lines1 lines2) $ \ (l1,l2) -> do
        when (l1 /= l2) $ do
            putStrLn l1
            putStrLn l2
            putStrLn ""
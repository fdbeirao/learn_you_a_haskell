import System.IO (readFile, putStr)

main :: IO ()
main = do
    contents <- readFile "girlfriend.txt"
    putStr contents
import System.IO

main :: IO ()
main = do
    contents <- readFile "girlfriend.txt"
    putStr contents
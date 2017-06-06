import System.IO (openFile, hGetContents, hClose, putStr, IOMode(ReadMode))

main :: IO ()
main = do
    handle <- openFile "girlfriend.txt" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

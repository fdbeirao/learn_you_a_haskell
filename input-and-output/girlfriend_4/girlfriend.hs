import System.IO (readFile, writeFile)
import Data.Char (toUpper)

main :: IO ()
main = do
    contents <- readFile "girlfriend.txt"
    writeFile "girlfriendcaps.txt" (map toUpper contents)
import System.IO (interact)
import Data.List (lines, unlines)

main :: IO ()
main = interact $ unlines . filter((<10) . length) . lines
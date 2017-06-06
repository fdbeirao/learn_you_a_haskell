import System.IO (interact)
import Data.List (lines, unlines)

main :: IO ()
main = interact shortLinesOnly

shortLinesOnly :: String -> String
shortLinesOnly input =
  let allLines = lines input
      shortLines = filter (\line -> length line < 10) allLines
      result = unlines shortLines
   in result
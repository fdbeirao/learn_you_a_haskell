import System.IO (putStrLn)
import System.Environment (getArgs, getProgName)
import Data.Traversable (mapM)

main :: IO ()
main = do
    args <- getArgs
    progName <- getProgName
    putStrLn "The arguments are:"
    mapM putStrLn args
    putStrLn "The program name is:"
    putStrLn progName
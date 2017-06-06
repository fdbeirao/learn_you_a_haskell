import System.IO (openFile, openTempFile, hGetContents, getLine, putStrLn, putStr, hPutStr, hClose, IOMode(ReadMode))
import System.Directory (removeFile, renameFile)
import Data.List (lines, unlines, delete, (!!))

main :: IO ()
main = do
    handle <- openFile "todo.txt" ReadMode
    contents <- hGetContents handle
    let todoTasks = lines contents
        numberedTasks = zipWith (\n line -> show n ++ " - " ++ line) [0..] todoTasks
    putStrLn "These are your TO-DO items:"
    putStr $ unlines numberedTasks
    putStrLn "Which one do you want to delete?"
    numberString <- getLine
    let number = read numberString
        newTodoItems = delete (todoTasks !! number) todoTasks
    (tempName, tempHandle) <- openTempFile "." "temp"
    hPutStr tempHandle $ unlines newTodoItems
    hClose handle
    hClose tempHandle
    removeFile "todo.txt"
    renameFile tempName "todo.txt"
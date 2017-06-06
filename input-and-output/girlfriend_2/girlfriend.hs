import System.IO (withFile, hGetContents, putStr, openFile, hClose, IOMode(ReadMode), Handle, FilePath)

main :: IO ()
main = do
    withFile "girlfriend.txt" ReadMode (\handle -> do
      contents <- hGetContents handle
      putStr contents)


-- Here's how we can make out own `withFile` function

withFile' :: FilePath -> IOMode -> (Handle -> IO a) -> IO a
withFile' path mode f = do
    handle <- openFile path mode
    result <- f handle
    hClose handle
    return result
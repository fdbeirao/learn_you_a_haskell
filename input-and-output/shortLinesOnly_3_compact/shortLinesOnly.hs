import System.IO (interact)

main :: IO ()
main = interact $ unlines . filter((<10) . length) . lines
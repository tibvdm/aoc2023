import System.Environment (getArgs)

import qualified Day01 as D01

main :: IO ()
main = do {
    args <- getArgs;

    case args of {
        [ "1", part ] -> D01.run (read part);
        _           -> putStrLn "Usage: aoc2023 <day> <part>";
    }
}

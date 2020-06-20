module Main where

import Lib
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    if 1 <= length args
    then do
        let src = (args !! 0)
        compile src
    else
        putStrLn "Arguments are too short"

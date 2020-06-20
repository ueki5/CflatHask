module Lib
    ( compile
    ) where

import Data.List (isInfixOf)
import System.Process
import System.FilePath
import System.Directory
import System.IO
--import Data.Text as DT
--import Data.Text.IO as DTI
import CflatHask.Parser.Parser

compile :: String -> IO ()
compile src = do
    eval src
    return ()
eval :: String -> IO ()
eval xs = case parser form xs of
             Just (ast,[]) -> putStrLn (show ast)
             Just (ast, xs') -> do
                 putStrLn "something is not evaluated!" 
                 putStrLn (show ast)
                 putStrLn xs'
             Nothing -> putStrLn "nothing is evaluated!"

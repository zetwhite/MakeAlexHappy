module Main where
import Grammar
import Tokens
import System.IO


main :: IO() 
main = do
--hSetBuffering stdout NoBuffering 
s <- getContents
--putStrLn s 
let ls = parseList (alexScanTokens s)
putStrLn (show (getDepth ls))
--print (getDepth ls)
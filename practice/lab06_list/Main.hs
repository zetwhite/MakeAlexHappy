module Main where
import Grammar
import Tokens

main = do
s <- getContents
--putStrLn s 
let ls = parseList (alexScanTokens s)
print ls
module Main where
import Grammar
import Tokens

main = do
s <- getContents
let ls = parseList (alexScanTokens s)
print ls
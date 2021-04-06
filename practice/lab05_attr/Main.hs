module Main where 
import Grammar 
import Tokens 
import Data.List (intercalate)

main = do
  s <- getContents 
  ls <- return (parseList (alexScanTokens s))
  if ls == [] 
    then putStrLn "[]"
    else putStrLn (intercalate "\n" ( map show ls )) 
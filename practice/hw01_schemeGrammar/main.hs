-- 
module Main where 
import Data.Typeable 
import Grammar 
import Tokens 
import System.IO
import System.IO.Error


myREPL::IO()
myREPL = do
  putStr "> "
  l <- tryIOError getLine
  case l o
    Left e ->
      if isEOFError e
         then putStrLn "Bye!     "
         else ioError e     
    Right s ->
      if s/="" 
      then 
        do
          let ast = parseList (alexScanTokens s) 
          putStrLn (showInfo ast) 
          myREPL
      else
        myREPL


main :: IO() 
main = do 
  hSetBuffering stdout NoBuffering 
  myREPL 

{
module Tokens where
}

%wrapper "basic"

$digit = [0-9] 

tokens :- 
  $white+ ; 
  $digit+  {\s -> TokenInt (read s :: Int)}

{
data Token 
  = TokenInt Int 
  deriving (Eq)
}
{
module Tokens where
}

%wrapper "basic"

$digit = [0-9] 

tokens :- 
  $white+ ; 
  $digit+  {\s -> T_Int (read s :: Int)}

{
data Token 
  = T_Int Int 
  deriving (Eq)
}
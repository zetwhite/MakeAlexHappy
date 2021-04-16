{
module Tokens where
}

%wrapper "basic"

$digit = [0-9] 
$alpha = [a-zA-Z]

tokens :-  
  define         {\s -> T_Define}
  $digit+       {\s -> T_Int (read s :: Int)}
  $alpha+        {\s -> T_Id (s)}
  \#t            {\s -> T_True }
  \#f            {\s -> T_False}
  \+             {\s -> T_Plus}
  \-             {\s -> T_Minus}
  \*             {\s -> T_Multi}
  \/             {\s -> T_Divid}
  \(             {\s -> T_LParen}
  \)             {\s -> T_RParen}
  $white+       ;
{
data Token
  = T_Int Int
  | T_Id String 
  | T_True 
  | T_False 
  | T_Plus
  | T_Minus 
  | T_Multi
  | T_Divid   
  | T_LParen
  | T_RParen
  | T_Define
  deriving (Eq, Show)   
}
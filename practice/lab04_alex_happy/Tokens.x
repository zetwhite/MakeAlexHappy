{
 module Tokens where
}

%wrapper "basic"

$zero = 0
$digit = 0-9
$sign = \-

tokens :-
$white+ ;
$zero           {\s -> TokenZero}
$digit+         {\s -> TokenPos }
\-($digit)+     {\s -> TokenNeg }

{
data Token 
  = TokenPos | TokenNeg | TokenZero 
  deriving (Eq, Show)
}
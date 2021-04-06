{
module Grammar where
import Tokens
}

%name parseNums
%tokentype { Token }
%error { parseError }

%token
    pos   { TokenPos }
    neg   { TokenNeg }
    zero  { TokenZero }
%%

List: Num      { [$1] }
    | List Num { $1 ++ [$2] }
Num: pos       { Pos }
    | neg      { Neg }
    | zero     { Zero }

{
parseError :: [Token] -> a
parseError _ = error "Parse error"

data Num 
    = Pos | Zero | Neg
    deriving (Eq, Ord, Read, Show)
}

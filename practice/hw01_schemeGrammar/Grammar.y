
{
module Grammar where
import Tokens
}

%name parseList
%tokentype { Token }
%error { parseError }

%token 
    integer    { T_Int $$ }
    id         { T_Id $$ }
    plus       { T_Plus } 
    minus      { T_Minus }
    multi      { T_Multi }
    divid      { T_Divid }
    lparen     { T_LParen }
    rparen     { T_RParen }   
    define     { T_Define }  
%%

SExp : List                 { $1 }
    | Atom                  { $1 }

List : lparen OpKeyword SExp SExp rparen { HS_List $2 $3 $4 } 
    | lparen define Id SExp rparen {HS_List HS_Define $3 $4}

Atom : integer             { HS_Int $1 }
    | Id                   { $1 }

Id  : id                   { HS_Id $1 }

OpKeyword : plus           { HS_Plus }
    | minus                { HS_Minus }
    | multi                { HS_Multi } 
    | divid                { HS_Divid }

{
parseError :: [Token] -> a 
parseError _ = error "Parse error"

data Node = HS_List Node Node Node 
         | HS_Int Int
         | HS_Id String
         | HS_Divid
         | HS_Multi
         | HS_Plus
         | HS_Minus
         | HS_Define
         deriving (Show)

showInfo :: Node -> String 
showInfo (HS_List b c d) = (showInfo b) ++ "\n" ++ (showInfo c) ++ "\n" ++ (showInfo d) ++ "\n"  
showInfo (HS_Int x) = "Int (" ++ (show x) ++ ")"
showInfo (HS_Id x) = "Id (" ++ x ++ ")"
showInfo x = (show x)
}

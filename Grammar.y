
{

module Grammar where
import Tokens
import AST 
}

%name parseList
%tokentype { Token }
%error { parseError }

%token 
    integer    { T_Int $$ }
    id         { T_Id $$ }
    string     { T_Str $$ }
    plus       { T_Plus } 
    minus      { T_Minus }
    multi      { T_Multi }
    divid      { T_Divid }
    lparen     { T_LParen }
    rparen     { T_RParen }   
    define     { T_Define }  
    if         { T_If }
    else       { T_Else }
    true       { T_True }
    false      { T_False }
    cond       { T_Cond }
    gt         { T_GT }
    lt         { T_LT }
    quote      { T_Quote }
    quotesym   { T_QuoteSym }
    dot        { T_Dot }
    'Null\?'   { T_Null }
    'Pair\?'   { T_Pair }
    'Atom\?'   { T_Atom }
    'Number\?' { T_Number }
    'Eq\?'     { T_Eq }
    cons       { T_Cons }
    car        { T_Car }
    cdr        { T_Cdr }
    read       { T_Read }
    write      { T_Write }
    display    { T_Display }
    lambda     { T_Lambda }
    '\'\(\)'   { T_EmptyL }
%%

Prog : SExp                 { SExp' $1 }
    | Defin                 { Def' $1 }

SExp : Expr                 { Expr' $1 }
    | Ident                 { Id' $1 }
    | Atom                  { Atom' $1 }

Ident : id                  { Ident' $1 }

Atom : Bool                 { AtomBool' $1 }
    | Number                { AtomInt' $1 }
    | String                { AtomStr' $1 }

Bool : true                 { True }
    | false                 { False }

Number : integer            { $1 } 

String : string             { $1 }

Expr : OpStmt               { $1 }
    | IOStmt                { $1 }
    | CondStmt              { $1 }
    | PredStmt              { $1 }

OpStmt : lparen OpKeyword SExp SExp rparen      { Bi' $2 $3 $4 } 

OpKeyword : plus                                { Plus' }
    | minus                                     { Minus' }
    | multi                                     { Multiply' } 
    | divid                                     { Devide' }
    | gt                                        { Greater' }
    | lt                                        { Lessthan' }

IOStmt : lparen read SExp rparen                { Uni' Read' $3 }
    | lparen write SExp rparen                  { Uni' Write' $3 }
    | lparen display SExp rparen                { Uni' Display' $3 }

CondStmt : lparen if SExp SExp SExp rparen      { If' $3 $4 $5 }

PredStmt : lparen 'Null\?' SExp rparen          { Uni' Null' $3 }
    | lparen 'Pair\?' SExp rparen               { Uni' Pair' $3 }
    | lparen 'Atom\?' SExp rparen               { Uni' AtomC' $3 }
    | lparen 'Number\?'SExp rparen              { Uni' Number' $3 }
    | lparen 'Eq\?' SExp SExp rparen            { Bi' Eq' $3 $4 }

Defin : lparen define Ident SExp rparen            { Bind' $3 $4 }

{
parseError :: [Token] -> a 
parseError _ = error "Parse error"
}

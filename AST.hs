module AST where 

data Program = Eval SExpression 
        | Appli Definition 
        deriving (Show)
 
data SExpression = Atom Atom 
        | Expr Expression 
        deriving (Show)

data Atom =  AtomBool Bool 
        | AtomStr String 
        | AtomInt Int 
        | AtomId Id
        deriving (Show)

data Id = Id String 
        deriving (Show)

data Expression = Bi BiOperator SExpression SExpression 
        | Uni UniOperator SExpression
        | If SExpression SExpression SExpression  
        deriving (Show)
--        | Cond CondUnit 
--        | Lambda LambdaArgs SExp 
--        | Appli Id SExpression

-- data LambdaArgs = Atom LambdaArgs | Nil      
-- data CondUnit = Case Expression Expression CondUnit | Expression  

data BiOperator = Plus 
        | Minus 
        | Multiply
        | Devide
        | Greater
        | Lessthan
        | Eq 
        deriving (Show)

data UniOperator = Read  
        | Write
        | Display 
        | Null
        | Pair 
        | AtomC
        | Number 
        deriving (Show)

data Definition = Def Id SExpression 
        deriving (Show)
module Envirnoment where 
import Data.Maybe 
import AST 

-- returing Type 
data Error = TypeError String 
    | UndefinedIdError String 
    | Error String 
    deriving (Show)

data ExpResult = Good SymEntry
    | Bad Error

instance Show ExpResult where 
    show (Good (SymAtom x)) = "[SUCCESS] " ++ show x
    show (Bad x) = "[ERROR] " ++ show x
    show (Good Empty) = "[SUCESS] empty" 
    show _ = "[SUCCESS]"

extractAtom :: ExpResult -> Atom
extractAtom (Good (SymAtom a)) = a
extractAtom _ = AtomInt' 1 

data LineResult = LineResult { 
    getStore :: Store , 
    getExpResult :: ExpResult 
}

-- go! go! go! give me a result 
runProgram :: Program-> Store -> LineResult 
runProgram (SExp' x) store = LineResult store (runSExp x store) 
runProgram (Def' x) store = LineResult store' $ Good Empty
    where store' = runDef x store

runDef :: Definition -> Store -> Store 
runDef (Bind' id xexpr) store = update id atom store
    where atom = SymAtom $ extractAtom (runSExp xexpr store) 


runSExp :: SExpression -> Store -> ExpResult 
-- runSExp (Atom' (Lambda' x y)) store = Good $ SymStore store' 
--    where store' = foldr (update (SymAtom (AtomInt' 0)) store') store x   
runSExp (Atom' atom) store = Good $ SymAtom atom 
runSExp (Id' ident) store = Good $ store ident
runSExp (Expr' xexpr) store = runExp xexpr store

getTempStore :: [Ident] -> [SExpression] -> Store -> Store 
getTempStore [] [] store = store 
getTempStore (id : ids) (exp : exps) store = runDef (Bind' id exp) store' 
    where store' = getTempStore ids exps store' 

runExp :: Expression -> Store -> ExpResult 
runExp (Bi' op exp1 exp2) store = runBOp op res1 res2 
    where   res1 = extractAtom (runSExp exp1 store) 
            res2 = extractAtom (runSExp exp2 store)
runExp (Uni' op exp) store = runUOp op res 
    where   res = extractAtom (runSExp exp store)
runExp (If' cond exp1 exp2) store 
    | condRes == AtomBool' True = runSExp exp1 store
    | otherwise = runSExp exp2 store
    where condRes = extractAtom (runSExp cond store )
runExp (Proc' (Lambda' args exp) values) store
    | length args /= length values = Bad $ Error "argumet number is different"
    | otherwise = (runSExp exp store')
    where store' = getTempStore args values store 

runBOp :: BiOperator -> Atom -> Atom -> ExpResult 
runBOp Plus' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomInt' ( val1 + val2 )
runBOp Plus' _ _ = Bad $ TypeError "(+) operand is not numeric"
runBOp Minus' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomInt' ( val1 - val2 )
runBOp Devide' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomInt' ( val1 `div` val2 )
runBOp Multiply' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomInt' ( val1 * val2 )
runBOp Greater' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomBool' ( val1 > val2 )
runBOp Lessthan' (AtomInt' val1) (AtomInt' val2) = Good $ SymAtom $ AtomBool' (val1 < val2 )
runBOp Eq' x y = Good $ SymAtom $ AtomBool' (x == y)
runBOp _ _ _ = Bad $ Error "Error in Binary Operator"


runUOp :: UniOperator -> Atom -> ExpResult 
runUOp Number' (AtomInt' _ ) = Good $ SymAtom $ AtomBool' True 
runUOp Number' _ = Good $ SymAtom $ AtomBool' False 
-- how to handle display, write, read -> there is restriction using IO () 
--codigo baseado no codigo da aula

module Interm where

import Parser
import            Data.Map (Map)
import qualified  Data.Map as Map
import            Control.Monad.State

type Temp = String
type Label = String
type Count = (Int,Int)

data Instr = MOVE Temp Temp
           | MOVEI Temp Int
           | LABEL Label
           | JUMP Label
           | COND RelOp Temp Temp Label Label
           | OP BinOp Temp Temp Temp
           | OPI BinOp Temp Ident Int
           deriving Show


type Table = Map Ident String

-- traduzir uma exp


newTemp :: State Count Temp
newTemp = do (temps,labels)<-get
             put (temps+1,labels)
             return ("t"++show temps)
newLabel :: State Count Label
newLabel = do (temps,labels)<-get
              put (temps,labels+1)
              return ("L"++show labels)


transExp :: Table -> Exp -> Temp -> State Count [Instr]
transExp tabl (Ident x) dest   -- caso base
  = case Map.lookup x tabl of
    Just temp -> return [MOVE dest temp]
    Nothing -> error "invalid variable"

transExp tabl (Num num) dest
  = return [MOVEI dest num]


transExp tabl (Op binop expr1 expr2) dest
  = do temp1 <- newTemp
       temp2 <- newTemp
       code1 <- transExp tabl expr1 temp1
       code2 <- transExp tabl expr2 temp2
       return (code1 ++ code2 ++ [OP binop dest temp1 temp2])



--- traducao assign

--- traducao Declare



transStmt :: Table -> Stmt -> State Count [Instr]

-- traducao ciclo If

transStmt tabl (Assign var expr)
  = case Map.lookup var tabl of
    Nothing -> error "undefined variable"
    Just dest -> do temp <- newTemp
                    code <- transExp tabl expr temp
                    return (code++ [MOVE dest temp])

transStmt tabl (If cond stmt1 stmt2)
  = do ltrue <- newLabel
       lfalse <- newLabel
       lend <- newLabel
       code0 <- transCond tabl cond ltrue lfalse
       code1 <- transStmt tabl stmt1
       code2 <- transStmt tabl stmt2
       return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend, LABEL lfalse] ++ code2 ++ [LABEL lend])

--- traducao ciclo While

transStmt tabl (While cond stmt1)
  = do ltrue <- newLabel
       lfalse <- newLabel
       lend <- newLabel
       code0 <- transCond tabl cond lfalse lend
       code1 <- transStmt tabl stmt1
       return ([LABEL ltrue] ++ code0 ++ [LABEL lfalse] ++ code1 ++ [JUMP ltrue, LABEL lend])

transCond :: Table -> Exp -> Label ->Label -> State Count [Instr]
transCond tabl (Cond cond expr1 expr2) ltrue lfalse
  = do t1 <- newTemp
       t2 <- newTemp
       code0 <- transExp tabl expr1 t1
       code1 <- transExp tabl expr2 t2
       return (code0 ++ code1 ++ [COND cond t1 t2 ltrue lfalse])

transCond tabl (BTrue) ltrue lfalse
  = return ([JUMP ltrue])

transCond tabl (BFalse) ltrue lfalse
  = return ([JUMP lfalse])

{-
transCond tabl (Not expr) ltrue lfalse
 = do t1 <- newTemp
      t2 <- newTemp
      code0 <- transCond tabl expr lfalse ltrue
      return (code0 ++ [COND expr t1 t2 ltrue lfalse])


transCond tabl (And cond1 cond2) ltrue lfalse
 = do lend <- newLabel
      code0 <- transCond tabl cond1 lend lfalse
      code1 <- transCond tabl cond2 ltrue lfalse
      return (code0 ++ [LABEL lend] ++ code1 ++ [COND relop  ])

transCond tabl (Or cond1 cond2) ltrue lfalse
   = do lend <- newLabel
        code0 <- transCond tabl cond1 ltrue lend
        code1 <- transCond tabl cond2 ltrue lfalse
        return (code0 ++ [LABEL lend] ++ code1 ++ [OR cond1 cond2])
-}

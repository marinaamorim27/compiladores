module Typecheck where

import           AST

import           Data.Map(Map)
import qualified Data.Map as Map

-- ambiente de tipos (tabela de símbolos)
type TypeEnv = Map Ident Type

----------------------------------------------------------------------------------
-- Expressions


checkExp :: TypeEnv -> Exp -> Type
checkExp env (Num n) = TyInt
checkExp env (Var x) = case Map.lookup x env of
    Nothing -> error "undeclared var"
    Just t -> t
checkExp env (Add e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyInt
         else error "type error in +"
checkExp env (Sub e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyInt
         else error "type error in -"
checkExp env (Mult e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyInt
         else error "type error in *"
checkExp env (Div e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyInt
         else error "type error in /"
checkExp env (Mod e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyInt
         else error "type error in %"
checkExp env (LessThan e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in <"
checkExp env (GreaterThan e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in >"
checkExp env (LessEq e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in <="
checkExp env (GreaterEq e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in >="
checkExp env (Equal e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in =="
checkExp env (NEqual e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in !="
checkExp env (And e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in &&"
checkExp env (Or e1 e2)
   = let t1 = checkExp env e1
         t2 = checkExp env e2
      in if t1==TyInt && t2==TyInt then TyBool
         else error "type error in ||"
checkExp env (Not e1)
   = let t1 = checkExp env e1
      in if t1==TyInt then TyBool
         else error "type error in !"

-------------------------------------------------------------------------------------
-- Statements

checkStm :: TypeEnv -> Stm -> Bool
checkStm env Skip = True
checkStm env (Assign var exp)
  = case Map.lookup var env of
      Nothing -> error "undeclared var"
      Just t1 -> let t2 = checkExp env exp
                 in if t1 == t2  then True
                    else error "type error in assignment"

checkStm env (If cond stm1 stm2)
  = let t0 = checkExp env cond
    in if t0 == TyBool then checkStm env stm1 && checkStm env stm2
       else error "type error: condition must be bool"

checkStm env (While exp stm1)
  = let t0 = checkExp env exp
    in if t0 == TyBool then checkStm env stm1
       else error "type error: condition must be bool"

checkStm env (Block decls stms)
  = let env' = extendEnv env decls
    in checkAll env' stms

checkStm env (Return exp)
  =let t0 = checkExp env exp
    in if t0 == TyInt then TyInt
      else TyBool


extendEnv :: TypeEnv -> [Decl] -> TypeEnv
extendEnv env [] = env
extendEnv env ((v,t):rest) = extendEnv (Map.insert v t env) rest

checkAll env [] = True
checkAll env (first:rest) = checkStm env first && checkAll env rest


-- alternative: use higher-order function `all' from Prelude
-- all :: (a -> Bool) -> [a] -> Bool

-- check a program
-- just check a statement from en empty type environment
checkProg :: Stm -> Bool
checkProg prog = checkStm Map.empty prog

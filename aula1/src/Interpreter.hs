module Interpreter where

--
-- sintaxe abstrata de programas sequenciais
--
type Ident = String  -- identificadores (nomes de variaveis)

data BinOp = Plus | Minus | Times | Div -- operações binárias
           deriving (Eq, Show)

data Stm = AssignStm Ident Exp   -- ident = exp
         | IncrStm Ident         -- ident++
         | CompoundStm Stm Stm   -- stm1; stm2
         deriving (Eq, Show)

data Exp = IdExp Ident           -- x, y, z ..
         | NumExp Int            -- 123
         | OpExp Exp BinOp Exp   -- e1+e2, e1*e2, ...
         | SeqExp Stm Exp        -- (stm, e)
         deriving (Eq, Show)


idsStm :: Stm -> [Ident]
idsStm (AssignStm ident exp) = [ident] ++ idsExp exp
idsStm (IncrStm ident) = [ident]
idsStm (CompoundStm stm stm1) = idsStm stm ++ idsStm stm1

idsExp :: Exp -> [Ident]
idsExp (IdExp ident) = [ident]
idsExp (NumExp int) = []
idsExp (OpExp exp binOp exp1) = idsExp exp ++ idsExp exp1
idsExp (SeqExp stm exp) = idsStm stm ++ idsExp exp


type Table = [(Ident, Int)]


interpStm :: Stm -> Table -> Table
interpStm (AssignStm ident exp) tab = update ident (fst(interpExp exp tab)) (snd(interpExp exp tab))
interpStm (IncrStm ident) tab = case lookup ident tab of
    Nothing -> tab
    Just n -> update ident (n+1) tab
interpStm (CompoundStm stm1 stm2) tab = (interpStm stm2 tab')
    where tab' = interpStm stm1 tab


interpExp :: Exp -> Table -> (Int, Table)
interpExp (IdExp x) tab = case (lookup x tab) of
                        |Just x -> (x,tab)
                        |Nothing -> (-1,tab)
interpExp (NumExp i) tab = (i,tab)
interpExp (OpExp exp binOp exp1) tab = case binOp of
                                      |Plus =(i1+i2,t')
                                      |Minus =(i1-i2,t')
                                      |Times = (i1*i2,t')
                                      |Div = (i1/i2,t')
                                      where (i1,t1) = interpExp(exp,tab)
                                      where (i2,t')= interpExp(exp1,t1)
interpExp (SeqExp stm exp) tab = interpExp exp tab'
                  where tab' = interpStm stm tab


update :: Ident -> Int -> Table -> Table
update exp n t = (exp, n) : (filter (\(a,_) -> a /= exp) t)

{- Exercício 3 (extra):

Modifique a definição do tipo Table and das funções do interpretador
de forma usar to uma estrutura de dados para associações mais eficiente;
por exemplo, Data.Map (package containers)
ou Data.HashMap (package unordered-containers).

Para evitar conflitos de nomes, deve importar o módulo Data.Map
com nomes qualificados:

import qualified Data.Map as Map

Depois use nomes como as Map.Map para o tipo e Map.empty, Map.lookup,
Map.insert, etc. para as operações.

Documentação:

http://hackage.haskell.org/package/containers
http://hackage.haskell.org/package/unordered-containers
-}

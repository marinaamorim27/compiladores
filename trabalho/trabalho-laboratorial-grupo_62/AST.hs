
module AST where

type Ident = String

--- types
data Types = TypeInt
           | TypeBool
           deriving (Show, Eq)

--- expressions
data Exp = Ident Ident           -- x, y, z
          | Num Int            -- 1, 2, 3
          | ADD Exp Exp        -- e1 + e2
          | SUB Exp Exp        -- e1 - e2
          | MULT Exp Exp       -- e1 * e2
          | DIV Exp Exp        -- e1 / e2
          | MOD Exp Exp        -- e1 % e2
          | LESS Exp Exp   -- e1 < e2
          | GREATER Exp Exp-- e1 > e2
          | EQUAL Exp Exp      -- e1 == e2
          | NEQUAL Exp Exp     -- e1 != e2
          | LESS Exp Exp     -- e1 <= e2
          | GREATEREQ Exp Exp  -- e1 >= e2
          | AND Exp Exp        -- e1 && e2
          | OR Exp Exp         -- e1 || e2
          | NOT Exp            -- !e1
          | BRACK Exp
          deriving Show

data Simple = Assign Ident Exp
            | Declare Types Ident
            | deriving Show
--- statements
data Stm = If Exp Stm Stm
         | While Exp Stm
         | Block [Stm]
         | Return Exp
         | PrintInt Exp
         | ScanInt Exp
         | Skip
         deriving Show

--- declarações
type Decl = (Ident, Type)

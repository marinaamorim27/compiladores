{-
  Exercício 3:

  Considere a gramática para expressões aritméticas:

  E -> T  E' 
  E' -> + T E' 
  E' -> - T E'
  E' -> 

  T  -> F T'
  T' -> * F T'
  T' -> / F T'
  T' -> 

  F -> num
  F -> ( E ) 

 Implemente um *parser* para esta gramática usando descida recursiva.

-}

module Parser where

-- importar a definição de Token
import Lexer 

--
-- | parser de expressões;
-- 1) consumir *tokens* (ver Lexer.x) se verificam a gramática de expressões (E)
-- 2) retornar os *tokens* que sobram
--
-- completar esta definição inicial (que não consume nada)
--
parseExpr :: [Token] -> [Token]
parseExpr toks = toks

  

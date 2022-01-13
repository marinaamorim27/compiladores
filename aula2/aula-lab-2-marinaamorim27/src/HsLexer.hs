{-
  Um analisador lexical simples em Haskell
-}
module Main where


import Data.Char (isDigit, isSpace, isAlpha, isAlphaNum)

data Token = ID String
           | NUM Int
           | LPAREN
           | RPAREN
           | LBRACE
           | RBRACE
           | SEMICOLON
           | COMMA
           | DOT
           | IF
           | WHILE
           | FOR
           | INT
           | FLOAT
           | REAL Int
           deriving (Eq,Show)

isAORU :: Char -> Bool
isAORU '_' = True
isAORU x = isAlpha x
--
-- transformar lista de carateres numa lista de tokens
--

lexer :: [Char] -> [Token]
lexer [] = []
lexer (',':xs) = COMMA : lexer xs
lexer ('.':xs) = DOT : lexer xs
lexer ('(':xs) = LPAREN : lexer xs
lexer (')':xs) = RPAREN  : lexer xs
lexer ('{':xs) = LBRACE : lexer xs
lexer ('}':xs) = RBRACE :lexer xs
lexer (';':xs) = SEMICOLON :lexer xs
lexer (x:xs)
  | isAORU x = lexerText (x:xs') : lexer xs''
  where xs' =takeWhile isAORU xs
        xs'' =dropWhile isAORU xs
lexer (x:xs)
  | isSpace x = lexer xs        -- consumir carateres brancos
lexer (x:xs)
  | isInt (x:xs) == True = NUM (read (x:xs')) : lexer xs''
  | isInt (x:xs) == False = REAL (read (x:xs')) : lexer xs''
  where xs' = takeWhile isDigit xs
        xs''= dropWhile isDigit xs
lexer (x:xs)
  | isAlpha x = lexerText (x:xs') : lexer xs''
  where xs' = takeWhile isAlphaNum xs
        xs''= dropWhile isAlphaNum xs
lexer (x:_)       -- outros carateres: erro
  = error ("invalid character: " ++ show x)

isInt :: [Char] -> Bool
isInt (x:xs)
  | x== '.' = False
  | otherwise = isInt xs

-- função auxiliar para distinguir palavras reservadas de identificadores
lexerText :: String -> Token
lexerText "if" = IF
lexerText "while" = WHILE
lexerText "for" = FOR
lexerText "int" = INT
lexerText "float" = FLOAT
lexerText xs  = ID xs


-- ler toda a entrada e imprimir a lista de tokens
main :: IO ()
main = do
  txt <- getContents
  print (lexer txt)

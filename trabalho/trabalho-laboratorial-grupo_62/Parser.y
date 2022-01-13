{
module Parser where
import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token


';'                { TokenSEMICOLON}
','                { TokenCOMMA}
'+'                { TokenADD }
'-'                { TokenSUB }
'*'                { TokenMULT }
'/'                { TokenDIV }
'%'                { TokenMOD }
"=="               { TokenEQUAL }
"!="               { TokenNEQUAL }
'<'                { TokenLESS }
"<="               { TokenLESSEQ }
'>'                { TokenGREATER }
">="               { TokenGREATEREQ }
'('                { TokenLPAREN }
')'                { TokenRPAREN }
'{'                { TokenLBRACE }
'}'                { TokenRBRACE }
'='                { TokenASSIGN }
'!'                { TokenNot}
"&&"               { TokenAND}
"||"               { TokenOR}
if                 { TokenIF }
else               { TokenELSE }
while              { TokenWHILE }
return             { TokenRETURN }
int                { TokenInt}
num                { TokenNum $$}
bool               { TokenBool $$}
true               { TokenTrue}
false              { TokenFalse}
print_int          { TokenPrint}
scan_int           { TokenScan}
id                 { TokenIdent $$}


%right '='
%left "||"
%left "&&"
%left "==" "!="
%left '<' '>' "<=" ">="
%left '+' '-'
%left '*' '/' '%'
%right '!'
%left '(' ')'

%%

Funcs
    : Func                                {[$1]}
    | Func Funcs                          {$1 : $2}
Func
   : Types id '(' Args ')' Stmt            {Function $1 $2 $4 $6}

Args
   :                                               {ArgEmpty}
   | Types id                                      {Argument $1 $2}
   | Types id ',' Args                             {Arguments $1 $2 $4 }

Block
    : Stmt                                         {[$1]}
    | Block Stmt                                   {$1 ++ [$2]}

Stmt
   : id '=' Exp                                     {Assign $1 $3}
   | Simple ';'                                     {SimpleStmt $1}
   | Exp ';'                                        {ExpStmt $1}
   | '{' Block '}'                                  {Block $2}
   | if '(' Exp ')' Stmt else Stmt                  {If $3 $5 $7}
   | if '(' Exp ')' Stmt                            {If $3 $5 Skip}
   | while '(' Exp ')' Stmt                         {While $3 $5}
   | return Exp ';'                                 {Return $2}
   | print_int '(' Exp ')' ';'                      {PrintInt $3}
   | scan_int '(' Exp ')' ';'                       {ScanInt $3}

Simple
     : Types id      {Declare $1 $2}

Types
    : int           { TypeInt}
    | bool          { TypeBool}

Exp
  : num              {Num $1}
  | true             {BTrue}
  | false            {BFalse}
  | Exp '+' Exp      {Op Add $1 $3}
  | Exp '-' Exp      {Op Sub $1 $3}
  | Exp '*' Exp      {Op Mult $1 $3}
  | Exp '/' Exp      {Op Div $1 $3}
  | Exp '%' Exp      {Op Mod $1 $3}
  | Exp "==" Exp     {Cond Equal $1 $3}
  | Exp "!=" Exp     {Cond NEqual $1 $3}
  | Exp '<'  Exp     {Cond Less $1 $3}
  | Exp "<=" Exp     {Cond LessEq $1 $3}
  | Exp '>' Exp      {Cond Greater $1 $3}
  | Exp ">=" Exp     {Cond GreaterEq $1 $3}
  | '(' Exp ')'      {Brack $2}
  | '!' Exp          {Not $2}
  | Exp "&&" Exp     {Cond And $1 $3}
  | Exp "||" Exp     {Cond Or $1 $3}
  | id               {Ident $1}


{
type Ident = String

data Func = Function Types Ident Args Stmt
          deriving Show

data Args = ArgEmpty
          | Argument Types Ident
          | Arguments Types Ident Args
          deriving Show

data Stmt = Assign Ident Exp
          | SimpleStmt Simple
          | ExpStmt Exp
          | Block [Stmt]
          | If Exp Stmt Stmt
          | While Exp Stmt
          | Return Exp
          | Skip
          | PrintInt Exp
          | ScanInt Exp
          deriving Show

data Simple = Declare Types Ident
            deriving Show

data Types = TypeInt
		       | TypeBool
		       deriving Show

data BinOp = Add | Sub | Mult | Div | Mod
           deriving Show

data RelOp = Equal | NEqual | Less | LessEq | Greater | GreaterEq | And | Or
           deriving Show

data Exp = Num Int
         | BTrue
         | BFalse
         | Op BinOp Exp Exp
         | Cond RelOp Exp Exp
         | Brack Exp
         | Not Exp
         | Ident String
         deriving Show


parseError :: [Token] -> a
parseError toks = error("parse error at " ++ show toks)
}

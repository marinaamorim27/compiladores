{
module Lexer where
}

%wrapper "basic"


$digit = [0-9]
$alpha = [_a-zA-Z]
$white = [\ \t\n\r]

tokens :-

$white+                      ;
";"                          {\_ -> TokenSEMICOLON}
","                          {\_ -> TokenCOMMA}
"+"                          {\_ -> TokenADD}
"-"                          {\_ -> TokenSUB}
"*"                          {\_ -> TokenMULT}
"/"                          {\_ -> TokenDIV}
"%"                          {\_ -> TokenMOD}
"=="                         {\_ -> TokenEQUAL}
"!="                         {\_ -> TokenNEQUAL}
"<"                          {\_ -> TokenLESS}
"<="                         {\_ -> TokenLESSEQ}
">"                          {\_ -> TokenGREATER}
">="                         {\_ -> TokenGREATEREQ}
"("                          {\_ -> TokenLPAREN}
")"                          {\_ -> TokenRPAREN}
"{"                          {\_ -> TokenLBRACE}
"}"                          {\_ -> TokenRBRACE}
"="                          {\_ -> TokenASSIGN}
"!"                          {\_ -> TokenNot}
"&&"                         {\_ -> TokenAND}
"||"                         {\_ -> TokenOR}
if                           {\_ -> TokenIF}
else                         {\_ -> TokenELSE}
while                        {\_ -> TokenWHILE}
return                       {\_ -> TokenRETURN}
$digit+                      {\s -> TokenNum(read s)}
bool                         {\s -> TokenBool (read s)}
true                         {\_ -> TokenTrue}
false                        {\_ -> TokenFalse}
int                          {\_ -> TokenInt}
print_int                    {\_ -> TokenPrint}
scan_int                     {\_ -> TokenScan}
$alpha($alpha|$digit)*       {\s -> TokenIdent s}

{

data Token = TokenSEMICOLON
           | TokenCOMMA
           | TokenADD
           | TokenSUB
           | TokenMULT
           | TokenDIV
           | TokenMOD
           | TokenEQUAL
           | TokenNEQUAL
           | TokenLESS
           | TokenLESSEQ
           | TokenGREATER
           | TokenGREATEREQ
           | TokenLPAREN
           | TokenRPAREN
           | TokenLBRACE
           | TokenRBRACE
           | TokenASSIGN
           | TokenNot
           | TokenAND
           | TokenOR
           | TokenIF
           | TokenELSE
           | TokenWHILE
           | TokenRETURN
           | TokenNum Int
           | TokenBool String
           | TokenTrue
           | TokenFalse
           | TokenInt
           | TokenPrint
           | TokenScan
           | TokenIdent String
           deriving (Eq,Show)
}

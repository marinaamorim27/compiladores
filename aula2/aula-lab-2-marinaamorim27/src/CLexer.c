/*
 * Um analisador lexical simples em C
 */

#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

/* enumeração para tipos de tokens 
*/
typedef enum { ID, NUM, COMMA, LPAREN, RPAREN, IF, END }  Token;

/* variáveis globais para valores dos token 
*/
int   token_value;         // valor (NUM)
char  token_text[255];     // texto (ID)

/* obter o próximo token
 */
Token getToken(void) {
  int c = getchar();

  while(isspace(c))  // consumir carateres brancos
    c = getchar();

  switch(c) {
  case '(':
    return LPAREN;
    break;
  case ')':
    return RPAREN;
    break;
  case ',':
    return COMMA;
    break;
  case EOF:
    return END;
    break;
  default:
    if(isdigit(c)) {
      int val = 0;       // acumulador do valor decimal
      while(isdigit(c)) {
	val = 10*val + c - '0';
	c = getchar();
      }
      ungetc(c,stdin);   // devolver o último carater
                         // que foi consumido a mais
      token_value = val; // valor do token
      return NUM;
    }
    else if(isalpha(c)) {
      int k = 0;
      while(isalpha(c) || isdigit(c)) {
	token_text[k++] = c;  // acumular texto 
	c = getchar();
      }
      ungetc(c,stdin);
      token_text[k++] = '\0';  // terminar a string
      if (strcmp(token_text, "if") == 0) {
	return IF; // palavra reservada
      } else {
	return ID; // caso contrário: identificador
      }
    }
    else {
      printf("unexpected character: %c\n", c);
      exit(-1);
    }  
  }
}


/* função auxiliar para imprimir um token (debugging)
 */
void printToken(Token token_type) {
    switch(token_type) {
    case NUM:
      printf("NUM(%d) ", token_value);
      break;
    case ID:
      printf ("ID(%s) ", token_text);
      break;
    case IF:
      printf("IF ");
      break;
    case COMMA:
      printf("COMMA ");
      break;
    case LPAREN:
      printf ("LPAREN ");
      break;
    case RPAREN:
      printf ("RPAREN ");
      break;
    case END:
      printf ("END ");
      break;
    }  
}


/* ler toda a entrada e imprimir a lista de tokens
 */
int main(void) {
  Token next =  getToken();  // obter o primeiro token
  
  while(next != END) { // enquanto não chegou ao fim
    printToken(next);  // imprimir e obter o próximo
    next = getToken();
  }
  printf("\n");
}

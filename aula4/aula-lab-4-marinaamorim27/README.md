# Compiladores &mdash; Folha laboratorial 4

## Exercício 4: uma calculadora para expressões aritméticas simples

Implemente uma calculadora para operações aritméticas
simples usando geradores de analisadores lexicais e sintáticos.

Para detalhes deve consultar a [folha de exercícios](aula-lab-4.pdf).


## Recomendações 

* Deve colocar todo o seu código fonte no diretório `src`
* Não adicione ao repositório Git ficheiros gerados automaticamente;
  exemplo: se usar o Alex e Happy, deve acrescentar os ficheiros
  `Main.hs`, `Lexer.x` e `Parser.y` mas **não adicione** 
  `Lexer.hs` e `Parser.hs` (que são gerados a partir os anteriores)
* Opcional: se quiser automatizar a construção do executável deve
  editar o ficheiro `calc.cabal` (para Haskell) ou criar um
  ficheiro *Makefile* (para C)
  
## Documentação 

Alex

:   [https://www.haskell.org/alex/doc/html/index.html](https://www.haskell.org/alex/doc/html/index.html)

Happy

:   [https://www.haskell.org/happy/doc/html/](https://www.haskell.org/happy/doc/html/)

Flex 

:   [https://westes.github.io/flex/manual/](https://westes.github.io/flex/manual/)

Bison

:   [https://www.gnu.org/software/bison/manual/html_node/index.html](https://www.gnu.org/software/bison/manual/html_node/index.html)

*Makefiles*

:     [https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/](https://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/)

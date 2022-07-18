clear all
clc
linhas = input('Insira a quantidade de linhas: ')
colunas = input('Insira a quantidade de colunas: ')

A = zeros(linhas, colunas)

menu = 1
while menu != 0
  clc
  A
  printf('\n  * MENU\n')
  printf('1. Alterar\n')
  printf('0. Continuar\n\n')
  menu = input('Escolha a opção: ')
  if menu == 1
    printf('\n')
    alterarLinha = input('Escolha a linha: ')
    printf('\n')
    alterarColuna = input('Ecolha a coluna: ')
    printf('\n')
    A(alterarLinha, alterarColuna) = input('Digite o valor: ')
  endif
endwhile

[U,S,V] = svd(A)

linhaColuna = size(S)
B = eye(linhaColuna(1), linhaColuna(2))

clc
A
U
S
V
B
printf("C = U*B*V'\n")
C = U*B*V'
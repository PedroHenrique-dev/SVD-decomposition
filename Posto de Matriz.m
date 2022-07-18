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

linhasColunas = size(A)
norma_2 = 0
aux = 0
for i=1:linhasColunas(1)
  for j=1:linhasColunas(2)
    aux += A(i,j)^2
  endfor
  aux = sqrt(aux)
  if norma_2 < aux
    norma_2 = aux
  endif
  aux = 0
endfor

[U,S,V] = svd(A)

linhasColunas = size(S)
posto = 0
for i=1:linhasColunas(1)
  if S(i,i) > norma_2
    posto++
  endif
endfor

clc
A
posto
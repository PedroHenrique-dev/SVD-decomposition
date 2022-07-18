% USV - Singular Value Decomposition (SVD) => decomposição de matriz
% Pseudo Inversa

clear all
clc

% ===================================================================================
% dados da matriz
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

inversa_A = inv(A)

% ===================================================================================
% decomposição SVD
[U,S,V] = svd(A)

% calcular B = S^(-1) para a pseudo inversa
linhaColuna = size(S)
B = zeros(linhaColuna(1), linhaColuna(2))

if linhaColuna(1) > linhaColuna(2)
  aux = linhaColuna(2)
else
  aux = linhaColuna(1)
endif

for i=1:aux
  B(i,i) = 1/S(i,i)
endfor

% mostrar dados
clc
A
inversa_A
pseudo_Inversa = V*B'*U'
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
[UA,SA,VA] = svd(A)
posto_k = input('Insira o posto_k: ')
B = zeros(posto_k,posto_k)

for i=1:posto_k
  SB(i,i) = SA(i,i)
endfor

for i=1:posto_k
  UB = UA(:,i)
endfor

for i=1:posto_k
  VB = VA(:,i)
endfor

B = UB*SB*VB'
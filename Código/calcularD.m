function [ D ] = calcularD(M, P, L, Pk)
%CALCULARD Calcula a dist�ncia estimada com base na pot�ncia do sinal.
%   Devolve uma matriz coluna D com os valores de dist�ncia estimada
%   calculada para cada receptor k.
[rows, ~] = size(P);
for k = 1:rows
  D(k) = vpa(10^((P(k) - Pk(k))/(10*L(k))));
end
D = D.';
end

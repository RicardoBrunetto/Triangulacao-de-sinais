function [ A, B ] = calcularAB( M, D )
%CALCULARAB Calcula as matrizes de coeficientes e constantes das diferenças
%entre as equações da matriz M.
%   Devolve duas matrizes A e B que servem para resolver o problema da
%   Triangulação de Sinais.
L1 = M(1, :);
digits(31);
t1 = (sumsqr(M(1,:)) - D(1));
[rows, ~] = size(M);
for k = 2:rows
  A(k-1, :) = vpa((M(k,:) - L1)*2);
  B(k-1) = (sumsqr(M(k,:)) - D(k)) - t1;
end
A(rows, :) = vpa((M(rows,:) - M(2,:))*2);
B(rows) = (sumsqr(M(rows,:)) - D(rows)) - (sumsqr(M(2,:)) - D(2));
B = B.';
end

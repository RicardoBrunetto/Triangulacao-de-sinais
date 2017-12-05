function [M, P, L] = getInput(filename)
%GETINPUT Obtém a entrada de um arquivo de texto para o problema da
%Triangulação.
%   Cria três matrizes, M, P e L, onde: M que conterá as coordenadas x_k,
%   y_k, z_k, devendo ter ordem mx3; P que conterá os valorees pk_0,
%   devendo ter ordem mx1; L que conterá os valorees Lk,
%   devendo ter ordem mx1.
delimiterIn = ' ';
headerlinesIn = 1;
Input = importdata(filename, delimiterIn, headerlinesIn);
[rows, columns] = size(Input.data);
for k = 1:rows
  pk = Input.data(k, columns-1);
  lk = Input.data(k, columns);
  M(k, 1:columns-2) = Input.data(k, 1:columns-2);
  P(k) = pk;
  L(k) = lk;
end
L = L.';
P = P.';
end


function [ Pk ] = getPotencias( filename )
%GETPOTENCIAS Obt�m as pot�ncias lidas pelos receptores.
%   Devolve uma matriz coluna Pk com os valores lidos.
delimiterIn = ' ';
headerlinesIn = 1;
Input = importdata(filename, delimiterIn, headerlinesIn);
Pk = Input.data.';
end

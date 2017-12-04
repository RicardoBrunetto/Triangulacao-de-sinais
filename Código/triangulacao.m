V1 = [1 2 3];
V2 = [4 5 6];
V3 = [7 8 9];

M = [V1; V2; V3];
O = [1, 2, 3];

function R = calcular_raios(M, O)
  for k = 1:size(M,1)
    row = M(k, :);
    R(k,1) = sum((row-O).^2);
  end
end

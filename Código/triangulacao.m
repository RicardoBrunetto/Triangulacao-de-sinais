clear all;
digits(31);
[M, P, L] = getInput('input');
Pk = getPotencias('caso_teste');
[~, columns] = size(Pk);
for k = 1:columns
    clear D A B X
    D = calcularD(M, P, L, Pk(:,k));
    [A,B] = calcularAB(M, D);
    X = (inv(A.'*A)*A.')*B;
    Res(:,k) = X;
    drawCircle(M, D, X);
end
disp(Res);
%
% function R = calcular_raios(M, O)
%   for k = 1:size(M,1)
%     row = M(k, :);
%     R(k,1) = sum((row-O).^2);
%   end
% end

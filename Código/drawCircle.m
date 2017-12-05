function drawCircle(M, D, X)
    [rM, ~] = size(M);
    figure; hold on;
    for v = 1:rM
        x0 = M(v, 1); y0 = M(v, 2); r = D(v);
        t = 0:0.1:2*pi+0.1;
        x = r*cos(t) + x0;
        y = r*sin(t) + y0;
        plot(x0, y0, 'ok');
        plot(x, y, 'b');
    end
    plot(X(1), X(2), 'sm');
    hold off;
end
    
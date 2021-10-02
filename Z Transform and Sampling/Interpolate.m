function y = Interpolate(x, n, mode, L)
w = -pi:0.01:pi;
y = zeros(1, length(n));
X = DTFT(x, n);
if mode == 1
    for j = 1:length(w)
        if (abs(w(j)) > (pi/L))
            X(j) = 0;
        else
            X(j) = L*X(j);
        end
    end
    for j = 1:length(n)
        y(j) = y(j) + (exp(1i*w.*n(j))*(X.')*0.01/(2*pi));
    end
elseif mode == 2
    n1 = -L:1:L;
    h = 1 - (abs(n1)/L);
    H = DTFT(h, n1);
    X = H.*X;
    for j = 1:length(n)
        y(j) = (exp(1i*w.*n(j))*(X.')*0.01/(2*pi));
    end
elseif mode == 3
    n1 = n;
    x1 = x;
    n2 = n;
    for i = 1:1:39
        j = 1:1:L-1;
        x1(i+j) = [];
        n1(i+j) = [];
    end
    i = 1:L:39*L;
    n2(i) = [];
    temp = spline(n1, x1, n2);
    for i = 1:1:length(x)
        if (mod(i-1, L) ~= 0)
            x(i) = temp(((i - 1) - mod((i - 1), L))/L*(L-1) + mod((i - 1), L));
        end
    end
    y = x;
end
end
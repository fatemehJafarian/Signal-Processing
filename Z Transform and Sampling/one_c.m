n = -40:1:40;
T = 0.1;
w = -pi:0.01:pi;
xd = sinc(n*T).^2;
L  = [2, 4];
Xd = DTFT(xd, n);

[y1, m1] = Expander(xd, n, L(1));
Y1 = DTFT(y1, m1);

plot(w/pi, abs(Y1), w/pi, abs(Xd))
title('Absolute value of X(e^j^w), L = 2')
legend('F.T. of x[n/L])', 'F.T. of x[n]')
%%
[y2, m2] = Expander(xd, n, L(2));
Y2 = DTFT(y2, m2);

plot(w/pi, abs(Y2), w/pi, abs(Xd))
title('Absolute value of X(e^j^w), L = 4')
legend('F.T. of x[M/L]', 'F.T. of x[n]')
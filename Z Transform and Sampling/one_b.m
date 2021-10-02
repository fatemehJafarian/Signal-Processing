n = -40:1:40;
T = 0.1;
w = -pi:0.01:pi;
xd = sinc(n*T).^2;
M  = [2, 4, 6];
Xd = DTFT(xd, n);

[y1, m1] = Compressor(xd, n, M(1));
Y1 = DTFT(y1, m1);

plot(w/pi, abs(Y1), w/pi, abs(Xd))
title('Absolute value of X(e^j^w), M = 2')
legend('F.T. of x[nM])', 'F.T. of x[n]')
xlabel('Freq. [*pi]')
%%
[y2, m2] = Compressor(xd, n, M(2));
Y2 = DTFT(y2, m2);

plot(w/pi, abs(Y2), w/pi, abs(Xd))
title('Absolute value of X(e^j^w), M = 4')
legend('F.T. of x[nM]', 'F.T. of x[n]')
xlabel('Freq. [*pi]')
%%
[y3, m3] = Compressor(xd, n, M(3));
Y3 = DTFT(y3, m3);

plot(w/pi, abs(Y3), w/pi, abs(Xd))
title('Absolute value of X(e^j^w), M = 6')
legend('F.T. of x[nM]', 'F.T. of x[n]')
xlabel('Freq. [*pi]')
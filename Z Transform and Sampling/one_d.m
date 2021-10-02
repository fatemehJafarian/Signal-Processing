n = -40:1:40;
T = 0.1;
w = -pi:0.01:pi;
xd = sinc(n*T).^2;
L  = [2, 4];
mode = [1, 2, 3];
Xd = DTFT(xd, n);

[y1, m1] = Expander(xd, n, L(2));
xe1 = Interpolate(y1, m1, mode(1), L(2));

p1 = subplot(3,1,1);
plot(p1, m1, abs(xe1))
title('Interpolation, L = 4, mode = 1')

[y2, m2] = Expander(xd, n, L(2));
xe2 = Interpolate(y2, m2, mode(2), L(2));

p2 = subplot(3,1,2);
plot(p2, m2, abs(xe2))
title('Interpolation, L = 4, mode = 2')

[y3, m3] = Expander(xd, n, L(2));
xe3 = Interpolate(y3, m3, mode(3), L(2));

p3 = subplot(3,1,3);
plot(p3, m3, abs(xe3))
title('Interpolation, L = 4, mode = 3')
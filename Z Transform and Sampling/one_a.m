x1 = ones(1, 50);
n1 = 0:1:49;
T1 = DTFT(x1, n1);
%%
n2 = -12:1:13;
x2 = power(0.8, abs(n2));
T2 = DTFT(x2, n2);
%%
n3 = -3:1:10^6;
x3 = n3.*power(0.7, n3);
T3 = DTFT(x3, n3);
%%
n4 = 0:1:10^6;
x4 = 5*power(-0.6, n4).*sin(0.25*pi*n4);
T4 = DTFT(x4, n4);
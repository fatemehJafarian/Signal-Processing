fc = 10;
T = 1/80;
t = 0.001;
m = 0:1:999;
s = cos(2*pi*fc*m*t);
n = 0:1:79;
sd = cos(2*pi*fc*n*T);

plot(m/1000, s)
hold on
stem(n/80, sd)
hold off
title('Samples in S(t)')
xlabel('Time in sec')
ylabel('Magnitude')
legend('S(t)','Sd[n]')
%%
w = -pi:0.01:pi;
Sd = DTFT(sd, n);
plot(w/pi, abs(Sd))
title('Absolute value of Sd(e^j^w)')
xlabel('Freq. [*pi]')
%%
[s1, m1] = Expander(sd, n, 12);
se1 = Interpolate(s1, m1, 1, 12);

plot(m1/length(m1), se1)
hold on
stem(n/length(n), sd)
hold off
title('Interpolation, L = 12, mode = 1')
legend('Se[n]', 'Sd[n]')
%%
[s2, m2] = Expander(sd, n, 12);
se2 = Interpolate(s2, m2, 2, 12);

plot(m2/length(m2), se2)
hold on
stem(n/length(n), sd)
hold off
title('Interpolation, L = 25, mode = 2')
legend('Se[n]', 'Sd[n]')

% temp = s(26:975);
% error2 = (abs(temp - se2))*(abs(temp - se2)).';
%%
[s3, m3] = Expander(sd, n, 25);
se3 = Interpolate(s3, m3, 3, 25);

plot(m3/length(m3), se3)
hold on
stem(n/length(n), sd)
hold off
title('Interpolation, L = 25, mode = 3')
legend('Se[n]', 'Sd[n]')

% temp = s(26:975);
% error3 = (abs(temp - se2))*(abs(temp - se2)).';
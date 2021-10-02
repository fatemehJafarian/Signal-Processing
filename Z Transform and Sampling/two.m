filename = 'music.mp3';
Fs = 44100;
samples = [1, 2*Fs];
[x, Fs] = audioread(filename, samples);
sound(x, Fs);
%%
w = -pi:0.01:pi;
n = 1:1:2*Fs;
X = DTFT(x(:, 1), n);

plot(w/pi, abs(X))
title('Absolute value of X(e^j^w)')
xlabel('Freq. [*pi]')
%%
M = [5, 20];
[x1, m1] = Compressor(x(:,1), n, M(1));
x1d = DTFT(x1, m1);
sound(x1, Fs/M(1));

plot(w/pi, abs(x1d))
title('M = 5')
ylabel('Absolute value')
xlabel('Freq. [*pi]')
%%
[x2, m2] = Compressor(x(:, 1), n, M(2));
x2d = DTFT(x2, m2);
sound(x2, Fs/M(2));

plot(w/pi, abs(x2d))
title('M = 20')
ylabel('Absolute value')
xlabel('Freq. [*pi]')
%%
[xe, m] = Expander(x, n, 3);
Xe = DTFT(xe, m);

plot(w/pi, abs(Xe))
title('Absolute value of Xe(e^j^w)')
xlabel('Freq. [*pi]')
%%
ye1 = Interpolate(xe, m, 1, 3);
Ye1 = DTFT(ye1, m);

plot(w/pi, abs(Ye1))
title('Absolute value of Ye(e^j^w), mode = 1')
xlabel('Freq. [*pi]')
%%
[yd1, k] = Compressor(ye1, m, 2);
Yd1 = DTFT(yd1, k);

plot(w/pi, abs(Ye1))
title('Absolute value of Yd(e^j^w), mode = 1')
xlabel('Freq. [*pi]')
%%
ye2 = Interpolate(xe, m, 2, 3);
Ye2 = DTFT(ye2, m);

plot(w/pi, abs(Ye2))
title('Absolute value of Ye(e^j^w), mode = 2')
xlabel('Freq. [*pi]')
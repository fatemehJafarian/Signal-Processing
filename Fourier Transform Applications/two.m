load('C:\Users\mathf\OneDrive\Desktop\CA2\Data\ECG\person_1\rec_2m.mat')
t = 1/500:1/500:20;
plot(t, val)
xlabel('Time (sec)')
%%
x = fft(val);
n = 10000;
fs = 500;
fshift = (-n/2:n/2-1)*(fs/n);
y = fftshift(x);
plot(fshift, abs(y))
xlabel('Freq. (Hz)')
%%
fp = 1.5;
xh = highpass(val, fp, fs);
fp = 25;
xl = lowpass(xh, fp, fs);
plot(fshift, abs(fftshift(fft(xl))))
xlabel('Freq. (Hz)')
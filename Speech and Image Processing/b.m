[x, fs] = audioread("C:\Users\mathf\OneDrive\Desktop\CA3\echo_sound.wav");
cx = ceps(x);
q = 0:(12/196479):12;
plot(cx)

k = (0:1:196479).';
filter = (1 + 0.8*exp(-1i*2*pi*k*5000/196480));
y = ifft(fft(x)./filter);
audiowrite("C:\Users\mathf\OneDrive\Desktop\CA3\filtered_echo_sound.wav", real(y), fs)
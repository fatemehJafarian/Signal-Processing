Fs = 22050;
[S, Fs] = audioread("C:\Users\mathf\Desktop\DSP_CA4\sound.wav", [1, 9*Fs]);
S_Noisy = S + 0.1 * rand(length(S), 1);
audiowrite("C:\Users\mathf\Desktop\DSP_CA4\noisy_sound.wav", S_Noisy, Fs);
t = (0:1:length(S)-1)/Fs;

subplot(2,1,1);
plot(t, S)
title('without noise')
xlabel('time in second')

subplot(2,1,2); 
plot(t, S_Noisy)
title('with noise')
xlabel('time in second')
%%
y = fft(S);
y = fftshift(y);
y_n = fft(S_Noisy);
y_n = fftshift(y_n);
f = Fs*(0:1:length(S)-1)/length(S);

subplot(2,1,1);
plot(f, abs(y))
title('without noise')
xlabel('freq.')

subplot(2,1,2); 
plot(f, abs(y_n))
title('with noise')
xlabel('freq.')
%%
filtered_s = Filtering(S_Noisy);
audiowrite("C:\Users\mathf\Desktop\DSP_CA4\filtered_sound.wav", filtered_s, Fs);

subplot(2,1,1);
plot(t, S)
title('without noise')
xlabel('time in second')

subplot(2,1,2); 
plot(t, filtered_s)
title('filtered noise')
xlabel('time in second')
%%
f_y = fft(filtered_s);
f_y = fftshift(f_y);

subplot(2,1,1);
plot(f, abs(y))
title('without noise')
xlabel('freq.')

subplot(2,1,2); 
plot(f, abs(f_y))
title('filtered noise')
xlabel('freq.')
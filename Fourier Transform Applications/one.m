Fs = 48000;
[a, Fs_a] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\a4.wav', [3*Fs, 5*Fs]);
[b, Fs_b] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\b4.wav', [2*Fs, 5*Fs]);
[c, Fs_c] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\c4.wav');
[d, Fs_d] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\d4.wav', [2*Fs, 5*Fs]);
[e, Fs_e] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\e4.wav');
[f, Fs_f] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\f4.wav');
[g, Fs_g] = audioread('C:\Users\mathf\OneDrive\Desktop\CA2\Data\Instrumental\g4.wav');
%%
M = 90;
N = 100;
spectrogram([b.', d.'].', M, N - M, N, Fs, 'yaxis');
%%
M = 450;
N = 500;
subplot(2, 1, 1)
spectrogram(a, M, N - M, N, Fs, 'yaxis');
title('window size = 450')

M = 270;
subplot(2, 1, 2)
spectrogram(a, M, N - M, N, Fs, 'yaxis');
title('window size = 270')
%%
M = 480;
N = 48000;
subplot(2, 1, 1)
spectrogram(c, M, M/2, N, Fs, 'yaxis');
title('higher nfft')

M = 48;
N = 4800;
subplot(2, 1, 2)
spectrogram(c, M, M/2, N, Fs, 'yaxis');
title('Lower nfft')
%%
M = 150;
N = 200;
subplot(2, 1, 1)
spectrogram(g, M, M*4/5, N, Fs, 'yaxis');
title('higher overlap')


subplot(2, 1, 2)
spectrogram(g, M, 1, N, Fs, 'yaxis');
title('Lower overlap')
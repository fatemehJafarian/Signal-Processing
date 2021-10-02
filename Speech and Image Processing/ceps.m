function Cx = ceps(x)
Cx = ifft(log2(abs(fft(x))));
end
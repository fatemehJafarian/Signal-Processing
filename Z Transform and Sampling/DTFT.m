function T = DTFT(t, n)
w = -pi:0.01:pi;
T = zeros(1, length(w));
for  j = 1:length(n)
    T = T + t(j)*exp(-1i*w.*n(j));
end

% mag = subplot(2,1,1);
% plot(mag, w/pi, abs(T))
% ylabel('|X(e^j^w)|')
% xlabel('Freq. [*pi]')
% 
% phase = subplot(2,1,2);
% plot(phase, w/pi, angle(T))
% ylabel('Angle of X(e^j^w)')
% xlabel('Freq. [*pi]')
end
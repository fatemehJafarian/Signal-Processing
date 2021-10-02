function [y, m] = Compressor(x, n, M)
size = idivide(length(n), int32(M));
y = zeros(1, size);
m = zeros(1, size);
temp = mod(n(1), M);
if (n(1) < 0) && (temp ~= 0)
    temp = M - temp;
end
for j = 1+temp:M:length(n)
    if (mod(n(j), M) == 0)
        y((j-temp-1)/M + 1) = x(j);
        m((j-temp-1)/M + 1) = n(j)/M;
    end
end 
end
function [y, m] = Expander(x, n, L)
size = (length(n) - 1)*L;
y = zeros(1, size);
m = zeros(1, size);
for j = 1:L:size
    y(j) = x((j - 1)/L + 1);
    m(j) = L*n((j - 1)/L + 1);
    for k = 1:L-1
        m(k + j) = m(j) + k;
    end
end 
y(size) = x(length(n));
end
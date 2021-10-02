function y = filter_(img, type, filter_type, param)
img_F = fftshift(fft(img));
[P, Q] = size(img);
y = zeros(P, Q);
D = @(u, v) (u - P/2)^2 + (v - Q/2)^2;
if filter_type == 0
    if type == 0
        for i = 1:P
            for j = 1:Q
                if D(i, j) <= param
                    y(i, j) = 1;
                end
            end
        end
    elseif type == 1
        for i = 1:P
            for j = 1:Q
                y(i, j) = 1 / (1 + (D(i, j) / param(1)).^(2 * param(2)));
            end
        end
    elseif type == 2
        for i = 1:P
            for j = 1:Q
                y(i, j) = exp(-D(i, j).^2 / (2 * param^2));
            end
        end
    end
elseif filter_type == 1
   if type == 0
        for i = 1:P
            for j = 1:Q
                if D(i, j) > param
                    y(i, j) = 1;
                end
            end
        end
    elseif type == 1
        for i = 1:P
            for j = 1:Q
                y(i, j) = 1 / (1 + (param(1) / D(i, j)).^(2 * param(2)));
            end
        end
    elseif type == 2
        for i = 1:P
            for j = 1:Q
                y(i, j) = (1 - exp(-D(i, j).^2 / (2 * param^2)));
            end
        end
    end
end
y = y .* img_F;
y = ifft(ifftshift(y));
y = y(1:(P+1)/2, 1:(Q+1)/2);
end
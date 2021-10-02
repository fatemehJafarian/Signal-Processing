img_info = imread("C:\Users\mathf\Desktop\DSP_CA4\a.tif");
[M, N] = size(img_info);
I = zeros(2*M-1, 2*N-1);
I(1:M, 1:N) = img_info;

subplot(2,3,1);
I1 = abs(filter_(I, 0, 0, 10));
imshow(I1, [])
title('f = 10, Ideal')

subplot(2,3,2); 
I2 = abs(filter_(I, 1, 0, [10, 100]));
imshow(I2, [])
title('f = 10, Butterworth')

subplot(2,3,3); 
I3 = abs(filter_(I, 2, 0, 10));
imshow(I3, [])
title('f = 10, Gaussian')

subplot(2,3,4);
I4 = abs(filter_(I, 0, 0, 30));
imshow(I4, [])
title('f = 30, Ideal')

subplot(2,3,5); 
I5 = abs(filter_(I, 1, 0, [30, 100]));
imshow(I5, [])
title('f = 30, Butterworth')

subplot(2,3,6); 
I6 = abs(filter_(I, 2, 0, 30));
imshow(I6, [])
title('f = 30, Gaussian')
%%
subplot(2,3,1);
I7 = abs(filter_(I, 0, 0, 150));
imshow(I7, [])
title('f = 150, Ideal')

subplot(2,3,2); 
I8 = abs(filter_(I, 1, 0, [150, 100]));
imshow(I8, [])
title('f = 150, Butterworth')

subplot(2,3,3); 
I9 = abs(filter_(I, 2, 0, 150));
imshow(I9, [])
title('f = 150, Gaussian')

subplot(2,3,4);
I10 = abs(filter_(I, 0, 0, 450));
imshow(I10, [])
title('f = 450, Ideal')

subplot(2,3,5); 
I11 = abs(filter_(I, 1, 0, [450, 100]));
imshow(I11, [])
title('f = 450, Butterworth')

subplot(2,3,6); 
I12 = abs(filter_(I, 2, 0, 450));
imshow(I12, [])
title('f = 450, Gaussian')
%%
subplot(2,3,1);
I1 = abs(filter_(I, 0, 1, 10));
imshow(I1, [])
title('f = 10, Ideal')

subplot(2,3,2); 
I2 = abs(filter_(I, 1, 1, [10, 100]));
imshow(I2, [])
title('f = 10, Butterworth')

subplot(2,3,3); 
I3 = abs(filter_(I, 2, 1, 10));
imshow(I3, [])
title('f = 10, Gaussian')

subplot(2,3,4);
I4 = abs(filter_(I, 0, 1, 30));
imshow(I4, [])
title('f = 30, Ideal')

subplot(2,3,5); 
I5 = abs(filter_(I, 1, 1, [30, 100]));
imshow(I5, [])
title('f = 30, Butterworth')

subplot(2,3,6); 
I6 = abs(filter_(I, 2, 1, 30));
imshow(I6, [])
title('f = 30, Gaussian')
%%
subplot(2,3,1);
I7 = abs(filter_(I, 0, 1, 150));
imshow(I7, [])
title('f = 150, Ideal')

subplot(2,3,2); 
I8 = abs(filter_(I, 1, 1, [150, 100]));
imshow(I8, [])
title('f = 150, Butterworth')

subplot(2,3,3); 
I9 = abs(filter_(I, 2, 1, 150));
imshow(I9, [])
title('f = 150, Gaussian')

subplot(2,3,4);
I10 = abs(filter_(I, 0, 1, 450));
imshow(I10, [])
title('f = 450, Ideal')

subplot(2,3,5); 
I11 = abs(filter_(I, 1, 1, [450, 100]));
imshow(I11, [])
title('f = 450, Butterworth')

subplot(2,3,6); 
I12 = abs(filter_(I, 2, 1, 450));
imshow(I12, [])
title('f = 450, Gaussian')
%%
img = im2bw(imread("C:\Users\mathf\Desktop\DSP_CA4\Untitled.jpg"));
[M, N] = size(img);
I = zeros(2*M-1, 2*N-1);
I(1:M, 1:N) = img;
y = abs(filter_(I, 2, 0, 450));
imshow(y)
%%
img = im2bw(imread("C:\Users\mathf\Desktop\DSP_CA4\Untitled.jpg"));
y = abs(filter_(img, 2, 0, 450));
imshow(y)
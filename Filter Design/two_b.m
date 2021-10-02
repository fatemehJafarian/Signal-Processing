img = imread("C:\Users\mathf\Desktop\DSP_CA4\image_ca.jpg");
h = fspecial('sobel');
y = imfilter(img, h);
imshow(y);
%%
h = fspecial('laplacian');
y = imfilter(img, h);
imshow(y);
%%
h = fspecial('gaussian');
y = imfilter(img, h);
imshow(y);
%%
h = fspecial('disk');
y = imfilter(img, h);
imshow(y);
%%
h = fspecial('average');
y = imfilter(img, h);
imshow(y);
%%
img = im2bw(img);
%%
k = [-1 -1 -1; -1 8 -1; -1 -1 -1];
y = conv2(img, k);
imshow(abs(y));
%%
k = [-1 -1 -1; 2 2 2; -1 -1 -1];
y = conv2(img, k);
imshow(abs(y));
%%
k = [0 0 0; 0 1 0; 0 0 0];
y = conv2(img, k);
imshow(abs(y));
%%
k = [0 -1 0; -1 5 -1; 0 -1 0];
y = conv2(img, k);
imshow(abs(y));
%%
k = [1 2 1; 2 4 2; 1 2 1];
y = conv2(img, k/16);
imshow(abs(y));
%%
imshow(img, [])
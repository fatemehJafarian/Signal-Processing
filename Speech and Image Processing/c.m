imdata = imread('C:\Users\mathf\OneDrive\Desktop\CA3\tiger.jpg');
x = dct2(imdata);
y = log2(abs(x));

%%
imshow(y,[])
colormap(gca,jet(64))
colorbar
%%
x = x(1:1314, 1:1794);
im1 = uint8(idct2(x));
imwrite(im1, 'C:\Users\mathf\OneDrive\Desktop\CA3\tiger_5%.jpg')

%%
x = x(1:1146, 1:1662);
im1 = uint8(idct2(x));
imwrite(im1, 'C:\Users\mathf\OneDrive\Desktop\CA3\tiger_15%.jpg')
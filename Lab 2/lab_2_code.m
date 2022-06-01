clear all;
clc;

A = 'lab2_images/Fig0232(a)(partial_body_scan).tif';
%D = 'lab2_images/Fig0227(a)(washington_infrared).tif'
B = imread(A, 'tif');
second_pic_dir = 'lab2_images/Fig0230(b)(dental_xray_mask).tif';
second_pic = imread(second_pic_dir, 'tif');

%nearest = imrotate(B,45, 'nearest');
%bilinear = imrotate(B,45, 'bilinear');
%bicubic = imrotate(B,45, 'bicubic');
 
%nearest = imresize(B,0.5, 'nearest');
%bilinear = imresize(B,0.5, 'bilinear');
%bicubic = imresize(B,0.5, 'bicubic');

nearest = imresize(B,2, 'nearest');
bilinear = imresize(B,2, 'bilinear');
bicubic = imresize(B,2, 'bicubic');

figure(1),
subplot(2,2,1), imshow(B), title('Original Image');
subplot(2,2,2), imshow(nearest), title('Nearest');
subplot(2,2,3), imshow(bilinear), title('Bilinear');
subplot(2,2,4), imshow(bicubic), title('Bicubic');

%E = getframe(1);
%imwrite(E.cdata, 'lab2_images/Fig232 rotate.tif');

%E2 a)
%grayImage2 = B - rem(B,2);
%diffImage = double(B) - double(grayImage2);
%multiImage = uint8(255 * mat2gray(diffImage));

%figure(2),
%subplot(2,2,1), imshow(B), title('Original Image');
%subplot(2,2,2), imshow(grayImage2), title('Gray Image');
%subplot(2,2,3), imshow(diffImage), title('Diff Image');


%E2. b)
%grayImage = mat2gray(B);
%multiplied = double(second_pic) .* double(grayImage);
%multiplied = uint8(255*mat2gray(multiplied));
%figure(1),
%subplot(2,2,1), imshow(B), title('Original Image');
%subplot(2,2,2), imshow(multiplied), title('Multiplied');

%E3. c)
% grayImage = mat2gray(B);
% whites=max(grayImage,0.25);
% negative = imcomplement(grayImage);
% subplot(1,3,1), imshow(B), title('Original Image');
% subplot(1,3,2), imshow(negative), title('Negative');
% subplot(1,3,3), imshow(whites), title('Set Union');
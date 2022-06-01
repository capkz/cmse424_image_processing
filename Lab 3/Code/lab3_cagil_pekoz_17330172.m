%Importing Pictures

directory = 'LAB3\Fig1.tif';
fig1 = imread(directory,'tif');

directory = 'LAB3\Fig2.tif';
fig2 = imread(directory,'tif');

directory = 'LAB3\Fig3.tif';
fig3 = imread(directory,'tif');

directory = 'LAB3\Fig316a.tif';
fig316a = imread(directory,'tif');

directory = 'LAB3\Fig316b.tif';
fig316b = imread(directory,'tif');

directory = 'LAB3\Fig316c.tif';
fig316c = imread(directory,'tif');

directory = 'LAB3\Fig316d.tif';
fig316d = imread(directory,'tif');

%E1

%a)
%%i)Image negative on Fig1
fig1_neg = intrans(fig1, 'neg');

figure (1),
subplot(1,2,1), imshow(fig1), title('Original Fig 1'),
subplot(1,2,2), imshow(fig1_neg), title('Intrans Negative of Fig1')

E = getframe(1);
imwrite(E.cdata, 'output/E1)a)i)Fig1Negative.tif');

%%ii) Log transformation on Fig2
fig2_log = intrans(fig2, 'log');

figure (2),
subplot(1,2,1), imshow(fig2), title('Original Fig 2'),
subplot(1,2,2), imshow(fig2_log), title('Log Transformation of Fig 2')

E = getframe(2);
imwrite(E.cdata, 'output/E1)a)ii)Fig2Log.tif');

%%ii) Log transformation on Fig2
fig2_log = intrans(fig2, 'log');

figure (2),
subplot(1,2,1), imshow(fig2), title('Original Fig 2'),
subplot(1,2,2), imshow(fig2_log), title('Log Transformation of Fig 2')

E = getframe(2);
imwrite(E.cdata, 'output/E1)a)ii)Fig2Log.tif');

%%iii) Gamma transformation with parameter values 0.3, 0.4, 06, 2.5 on Fig3
fig3_gamma1=intrans(fig3, 'gamma',0.3);
fig3_gamma2=intrans(fig3, 'gamma',0.4);
fig3_gamma3=intrans(fig3, 'gamma',0.6);
fig3_gamma4=intrans(fig3, 'gamma',2.5);

figure (3),
subplot(2,3,1), imshow(fig3), title('Original Fig 2'),
subplot(2,3,2), imshow(fig3_gamma1), title('Gamma 0.3')
subplot(2,3,3), imshow(fig3_gamma2), title('Gamma 0.4')
subplot(2,3,4), imshow(fig3_gamma3), title('Gamma 0.6')
subplot(2,3,5), imshow(fig3_gamma4), title('Gamma 2.5')

E = getframe(3);
imwrite(E.cdata, 'output/E1)a)iii)Fig3Gamma.tif');

%%iv) Contrast stretching on Fig1
fig1_contrast_stretch = intrans(fig1,'stretch',mean2(im2double(fig1)), 0.9);

figure (4),
subplot(1,2,1), imshow(fig1), title('Original Fig1'),
subplot(1,2,2), imshow(fig1_contrast_stretch), title('Contrast Stretched Fig1')

E = getframe(4)
imwrite(E.cdata, 'output/E1)a)iv)Fig1GammaStretch.tif');
%% b) Modify the “intrans” function to perform image negative using “imadjust” 
%% function and compare the output obtained with the output of E1
% I have added a imAdjustNeg case into the imtrans.m, line 60 to get the
% negative of an image by imadjust function.

fig1_imadjustNeg = intrans(fig1,'imadjustNeg');

figure (5),
subplot(1,3,1), imshow(fig1), title('Original Fig 2'),
subplot(1,3,2), imshow(fig1_neg), title('Intrans Negative'),
subplot(1,3,3), imshow(fig1_imadjustNeg), title('Imadjust Negative')

E = getframe(5);
imwrite(E.cdata, 'output/E1)b)Fig1NegativeComparison.tif');

%% E2)
% a) Use Figure 3.16 (a), (b), (c), and (d) from the reference book “R. C.
% Gonzalez and R. E. Woods, Digital Image Processing, 3rd Edition, Prentice 
% Hall, 2008”,plot the histograms of these images in 4 different ways using 
% the following functions:

% i) imhist
% ii) bar
% iii) stem
% iv) plot

figure (6),
subplot(3,2,1),imshow(fig316a),title('Original Fig316a'),
subplot(3,2,2),imhist(fig316a),title('Histogram'),
subplot(3,2,3),bar(fig316a),title('Bar'),
subplot(3,2,4),stem(fig316a),title('Stem'),
subplot(3,2,5),plot(fig316a),title('Plot')

E = getframe(6);
imwrite(E.cdata, 'output/E2)a)Fig316a.tif');


figure (7),
subplot(3,2,1),imshow(fig316b),title('Original Fig316b'),
subplot(3,2,2),imhist(fig316b),title('Histogram'),
subplot(3,2,3),bar(fig316b),title('Bar'),
subplot(3,2,4),stem(fig316b),title('Stem'),
subplot(3,2,5),plot(fig316b),title('Plot')

E = getframe(7);
imwrite(E.cdata, 'output/E2)a)Fig316b.tif');


figure (8),
subplot(3,2,1),imshow(fig316c),title('Original Fig316c'),
subplot(3,2,2),imhist(fig316c),title('Histogram'),
subplot(3,2,3),bar(fig316c),title('Bar'),
subplot(3,2,4),stem(fig316c),title('Stem'),
subplot(3,2,5),plot(fig316c),title('Plot')

E = getframe(8);
imwrite(E.cdata, 'output/E2)a)Fig316c.tif');


figure (9),
subplot(3,2,1),imshow(fig316d),title('Original Fig316d'),
subplot(3,2,2),imhist(fig316d),title('Histogram'),
subplot(3,2,3),bar(fig316d),title('Bar'),
subplot(3,2,4),stem(fig316d),title('Stem'),
subplot(3,2,5),plot(fig316d),title('Plot')

E = getframe(9);
imwrite(E.cdata, 'output/E2)a)Fig316d.tif');

% b) Apply histogram equalization on the 4 images given in Figure 3.16 (a) 
% to (d) and plot the histograms of these histogram-equalized images using 
% histeq and imhist functions.

fig316a_hist_eq = histeq(fig316a)
figure (10),
subplot(4,2,1),imshow(fig316a),title('Original Fig316a'),
subplot(4,2,2),imshow(fig316a_hist_eq),title('Histogram Equalization'),
subplot(4,2,3),imhist(fig316a),title('Histogram of Original'),
subplot(4,2,4),imhist(fig316a_hist_eq),title('Histogram of Histogram Equalization')

E = getframe(10);
imwrite(E.cdata, 'output/E2)b)Fig316a.tif');

fig316b_hist_eq = histeq(fig316b)
figure (11),
subplot(4,2,1),imshow(fig316b),title('Original Fig316b'),
subplot(4,2,2),imshow(fig316b_hist_eq),title('Histogram Equalization'),
subplot(4,2,3),imhist(fig316b),title('Histogram of Original'),
subplot(4,2,4),imhist(fig316b_hist_eq),title('Histogram of Histogram Equalization')

E = getframe(11);
imwrite(E.cdata, 'output/E2)b)Fig316b.tif');

fig316c_hist_eq = histeq(fig316c)
figure (12),
subplot(4,2,1),imshow(fig316c),title('Original Fig316c'),
subplot(4,2,2),imshow(fig316c_hist_eq),title('Histogram Equalization'),
subplot(4,2,3),imhist(fig316c),title('Histogram of Original'),
subplot(4,2,4),imhist(fig316c_hist_eq),title('Histogram of Histogram Equalization')

E = getframe(12);
imwrite(E.cdata, 'output/E2)b)Fig316c.tif');

fig316d_hist_eq = histeq(fig316d)
figure (13),
subplot(4,2,1),imshow(fig316d),title('Original Image fig316d'),
subplot(4,2,2),imshow(fig316d_hist_eq),title('Histogram Equalization'),
subplot(4,2,3),imhist(fig316d),title('Histogram of Original'),
subplot(4,2,4),imhist(fig316d_hist_eq),title('Histogram of Histogram Equalization')

E = getframe(13);
imwrite(E.cdata, 'output/E2)b)Fig316d.tif');
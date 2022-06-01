%%%%%%%%%%%%%%%%%%%%%%%% E1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

img1_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig1'
fig1 = imread(img1_destination,'tif')
%figure, imshow(fig1)

img2_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig2'
fig2 = imread(img2_destination,'tif')
%figure, imshow(fig2)

img3_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig3'
fig3 = imread(img3_destination,'tif')
%figure, imshow(fig3)

img4_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig316a'
fig316a = imread(img4_destination,'tif')
%figure, imshow(fig316a)

img5_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig316b'
fig316b = imread(img5_destination,'tif')
%figure, imshow(fig316b)

img6_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig316c'
fig316c = imread(img6_destination,'tif')
%figure, imshow(fig316c)

img7_destination='C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Fig316d'
fig316d = imread(img7_destination,'tif')
%figure, imshow(fig316d)

negative_fig1_1=intrans(fig1, 'neg')
%figure, imshow(negative_fig1_1)

figure (1) ,
subplot(2,2,1),imshow(fig1),title('Original Image fig1'),
subplot(2,1,2),imshow(negative_fig1_1),title('Negative with intrans of fig1')

saveas(figure(1),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Negative_Of_Fig1','jpg')

log_trans_fig2=intrans(fig2, 'log')
%figure, imshow(log_trans_fig2)

figure (2) ,
subplot(2,2,1),imshow(fig2),title('Original Image fig2'),
subplot(2,1,2),imshow(log_trans_fig2),title('Log transformation of fig2')

saveas(figure(2),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Log_Of_Fig2','jpg')


gamma_trans_fig3_1=intrans(fig3, 'gamma',0.3)
%figure, imshow(gamma_trans_fig3_1)
gamma_trans_fig3_2=intrans(fig3, 'gamma',0.4)
%figure, imshow(gamma_trans_fig3_2)
gamma_trans_fig3_3=intrans(fig3, 'gamma',0.6)
%figure, imshow(gamma_trans_fig3_3)
gamma_trans_fig3_4=intrans(fig3, 'gamma',2.5)
%figure, imshow(gamma_trans_fig3_4)

figure (3) ,
subplot(5,1,1),imshow(fig3),title('Original Image fig3'),
subplot(5,1,2),imshow(gamma_trans_fig3_1),title('Gamma transformation with value 0.3')
subplot(5,1,3),imshow(gamma_trans_fig3_2),title('Gamma transformation with value 0.4'),
subplot(5,1,4),imshow(gamma_trans_fig3_3),title('Gamma transformation with value 0.6')
subplot(5,1,5),imshow(gamma_trans_fig3_4),title('Gamma transformation with value 2.5')

saveas(figure(3),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Gammas_Of_Fig3','jpg')


constrast_strecth_fig1=intrans(fig1,'stretch',mean2(im2double(fig1)), 0.9);
%figure, imshow(constrast_strecth_fig1)

figure (4) ,
subplot(2,2,1),imshow(fig1),title('Original Image fig1'),
subplot(2,1,2),imshow(constrast_strecth_fig1),title('Contrast Strecth Of fig1 ')

saveas(figure(4),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Constrast_Strecth_Of_Fig1','jpg')


%Obtaining the negative image using imadjust function.
adjusted_fig1_2 = imadjust(fig1);
negative_fig1_2=imcomplement(adjusted_fig1_2)
%figure, imshow(negative_fig1_2)

%imadjust makes image sharper

figure (5) ,
subplot(4,2,1),imshow(fig1),title('Original Image fig1'),
subplot(4,2,2),imshow(adjusted_fig1_2),title('Adjusted fig1')
subplot(4,2,3),imshow(negative_fig1_1),title('Negative with intrast'),
subplot(4,2,4),imshow(negative_fig1_2),title('Negative with adjust')


saveas(figure(5),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Intrast_and_Adjust_Comparison','jpg')


%%%%%%%%%%%%%%%%%%%%%%%% E2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure (6),
subplot(5,2,1),imshow(fig316a),title('Original Image fig316a'),
subplot(5,2,2),imhist(fig316a),title('Histogram of fig316a'),
subplot(5,2,3),bar(fig316a),title('Bar of fig316a'),
subplot(5,2,4),stem(fig316a),title('Stem of fig316a'),
subplot(5,2,5),plot(fig316a),title('Plot of fig316a')

saveas(figure(6),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Plotting_of_A','jpg')

figure (7),
subplot(5,2,1),imshow(fig316b),title('Original Image fig316b'),
subplot(5,2,2),imhist(fig316b),title('Histogram of fig316b'),
subplot(5,2,3),bar(fig316b),title('Bar of fig316b'),
subplot(5,2,4),stem(fig316b),title('Stem of fig316b'),
subplot(5,2,5),plot(fig316b),title('Plot of fig316b')

saveas(figure(7),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Plotting_of_B','jpg')

figure (8),
subplot(5,2,1),imshow(fig316c),title('Original Image fig316c'),
subplot(5,2,2),imhist(fig316c),title('Histogram of fig316c'),
subplot(5,2,3),bar(fig316c),title('Bar of fig316c'),
subplot(5,2,4),stem(fig316c),title('Stem of fig316c'),
subplot(5,2,5),plot(fig316c),title('Plot of fig316c')

saveas(figure(8),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Plotting_of_C','jpg')

figure (9),
subplot(5,2,1),imshow(fig316d),title('Original Image fig316d'),
subplot(5,2,2),imhist(fig316d),title('Histogram of fig316d'),
subplot(5,2,3),bar(fig316d),title('Bar of fig316d'),
subplot(5,2,4),stem(fig316d),title('Stem of fig316d'),
subplot(5,2,5),plot(fig316d),title('Plot of fig316d')

saveas(figure(9),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\Plotting_of_D','jpg')

histogram_equalization_a = histeq(fig316a)
figure (10),
subplot(4,2,1),imshow(fig316a),title('Original Image fig316a'),
subplot(4,2,2),imshow(histogram_equalization_a),title('Histogram Equalization of fig316a'),
subplot(4,2,3),imhist(fig316a),title('Histogram of Original Image fig316a'),
subplot(4,2,4),imhist(histogram_equalization_a),title('Histogram of Histogram Equalization of fig316a')

saveas(figure(10),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\HE_A','jpg')

histogram_equalization_b = histeq(fig316b)
figure (11),
subplot(4,2,1),imshow(fig316b),title('Original Image fig316b'),
subplot(4,2,2),imshow(histogram_equalization_b),title('Histogram Equalization of fig316b'),
subplot(4,2,3),imhist(fig316b),title('Histogram of Original Image fig316b'),
subplot(4,2,4),imhist(histogram_equalization_b),title('Histogram of Histogram Equalization of fig316b'),
saveas(figure(11),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\HE_B','jpg')

histogram_equalization_c = histeq(fig316c)
figure (12),
subplot(4,2,1),imshow(fig316c),title('Original Image fig316c'),
subplot(4,2,2),imshow(histogram_equalization_c),title('Histogram Equalization of fig316c'),
subplot(4,2,3),imhist(fig316c),title('Histogram of Original Image fig316c'),
subplot(4,2,4),imhist(histogram_equalization_c),title('Histogram of Histogram Equalization of fig316c'),
saveas(figure(12),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\HE_C','jpg')

histogram_equalization_d = histeq(fig316d)
figure (13),
subplot(4,2,1),imshow(fig316d),title('Original Image fig316d'),
subplot(4,2,2),imshow(histogram_equalization_d),title('Histogram Equalization of fig316d'),
subplot(4,2,3),imhist(fig316d),title('Histogram of Original Image fig316d'),
subplot(4,2,4),imhist(histogram_equalization_d),title('Histogram of Histogram Equalization of fig316d')
saveas(figure(13),'C:\Users\Digikey\Desktop\Selin\EMU\cmse424\Lab3\HE_D','jpg')
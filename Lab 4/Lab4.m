f1=imread('Fig1.tif');
f2=imread('Fig2.tif');

%E1

f1_mean = mean2(f1)/10000 % to normalize the value between 0 and 1
f1_var = var(double(f1(:)))/10000 % to normalize the value between 0 and 1

%a)
f1_gaussian = imnoise(f1,'gaussian',f1_mean,f1_var);
f1_saltpepper = imnoise(f1,'salt & pepper');

%b)
f1_localvar = imnoise(f1,'localvar',0.05*rand(size(f1)));
f1_poisson = imnoise(f1,'poisson');
f1_speckle = imnoise(f1,'speckle',f1_var);

%Comparing different noise types:
figure(1),
subplot(2,3,1), imshow(f1), title('Original Image');
subplot(2,3,2), imshow(f1_gaussian), title('Gaussian');
subplot(2,3,3), imshow(f1_localvar), title('Localvar');
subplot(2,3,4), imshow(f1_poisson), title('Poisson');
subplot(2,3,5), imshow(f1_saltpepper), title('Salt & Pepper');
subplot(2,3,6), imshow(f1_speckle), title('Speckle');

%c)
[M,N]=size(f1)

f1_uniform2 = imnoise2('uniform',M,N)
f1_gaussian2 = imnoise2('gaussian',M,N)
f1_saltpepper2 = imnoise2('salt & pepper',M,N)
f1_lognormal2 = imnoise2('lognormal',M,N)
f1_rayleigh2 = imnoise2('rayleigh',M,N)
f1_exponential2 = imnoise2('exponential',M,N)
f1_erlang2 = imnoise2('erlang',M,N)

figure(2),
subplot(2,4,1), imshow(f1), title('Original Image');
subplot(2,4,2), imshow(f1_uniform2), title('Uniform');
subplot(2,4,3), imshow(f1_gaussian2), title('Gaussian');
subplot(2,4,4), imshow(f1_saltpepper2), title('Salt & Pepper');
subplot(2,4,5), imshow(f1_lognormal2), title('Lognormal');
subplot(2,4,6), imshow(f1_rayleigh2), title('Rayleigh');
subplot(2,4,7), imshow(f1_exponential2), title('Exponential');
subplot(2,4,8), imshow(f1_erlang2), title('Erlang');

%d)
figure(3),
subplot(2,4,1), histogram(f1_uniform2,50), title('Uniform Hist');
subplot(2,4,2), histogram(f1_gaussian2,50), title('Gaussian Hist');
subplot(2,4,3), histogram(f1_saltpepper2,50), title('Salt & Pepper Hist');
subplot(2,4,4), histogram(f1_lognormal2,50), title('Lognormal Hist');
subplot(2,4,5), histogram(f1_rayleigh2,50), title('Rayleigh Hist');
subplot(2,4,6), histogram(f1_exponential2,50), title('Exponential Hist');
subplot(2,4,7), histogram(f1_erlang2,50), title('Erlang Hist');

%E2

%a)
[M, N] = size(f2);
R = imnoise2('salt & pepper', M, N, 0.1, 0);
c = find (R==0);
gp = f2;
gp(c) = 0;

%b)
[M, N]= size(f2);
R = imnoise2('salt & pepper', M, N, 0, 0.1);
c = find (R==1);
gs = f2;
gs(c) = 255;

%c)
fp = spfilt(gp, 'chmean', 3, 3, 1.5);

%d)
fs = spfilt(gs, 'chmean', 3, 3, -1.5);

%e)
fpmax = spfilt(gp, 'max', 3, 3);

%f)
fsmin = spfilt(gs, 'min', 3, 3);

%Comparison Figure
figure(3),
subplot(3,3,1), imshow(f2), title('Original');
subplot(3,3,2), imshow(gp), title('Pepper Noise');
subplot(3,3,3), imshow(gs), title('Salt Noise');
subplot(3,3,4), imshow(fp), title('Contraharmonic(Pepper)');
subplot(3,3,5), imshow(fs), title('Contraharmonic(Salt)');
subplot(3,3,6), imshow(fpmax), title('Max(Pepper)');
subplot(3,3,7), imshow(fsmin), title('Min(Salt)');
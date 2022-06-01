% Lab 5

% Reading Images
f1=imread('Fig1.tif');
f2=imread('Fig2.tif');

%E1

%a)

%F1)
f1_sobel = edge(f1,'Sobel');
f1_prewitt = edge(f1,'Prewitt');
f1_roberts = edge(f1,'Roberts');
f1_laplacian = edge(f1,'log');
f1_zerocross = edge(f1,'zerocross');
f1_canny = edge(f1,'Canny');

figure(1),
subplot(4,2,1), imshow(f1), title('Original');
subplot(4,2,2), imshow(f1_sobel), title('Sobel');
subplot(4,2,3), imshow(f1_prewitt), title('Prewitt');
subplot(4,2,4), imshow(f1_roberts), title('Roberts');
subplot(4,2,5), imshow(f1_laplacian), title('Laplacian');
subplot(4,2,6), imshow(f1_zerocross), title('Zero-Cross');
subplot(4,2,7), imshow(f1_canny), title('Canny');

%F2)

f2_sobel = edge(f2,'Sobel');
f2_prewitt = edge(f2,'Prewitt');
f2_roberts = edge(f2,'Roberts');
f2_laplacian = edge(f2,'log');
f2_zerocross = edge(f2,'zerocross');
f2_canny = edge(f2,'Canny');

figure(2),
subplot(4,2,1), imshow(f2), title('Original');
subplot(4,2,2), imshow(f2_sobel), title('Sobel');
subplot(4,2,3), imshow(f2_prewitt), title('Prewitt');
subplot(4,2,4), imshow(f2_roberts), title('Roberts');
subplot(4,2,5), imshow(f2_laplacian), title('Laplacian');
subplot(4,2,6), imshow(f2_zerocross), title('Zero-Cross');
subplot(4,2,7), imshow(f2_canny), title('Canny');

% b1)Fig1.tif
[M, N] = size(f1);

    % i)Uniform
f1_uniform = imnoise2('uniform',M,N);
f1_uniform = im2double(f1).*f1_uniform

    % ii)Gaussian
f1_gaussian = imnoise2('gaussian',M,N);
f1_gaussian = im2double(f1).*f1_gaussian;
imshow(f1_gaussian)

    % iii) Salt & Pepper
% Pepper Noise
[M, N] = size(f1);
R = imnoise2('salt & pepper', M, N, 0.1, 0);
c = find (R==0);
gp = f1;
gp(c) = 0;

% Salt Noise
[M, N]= size(gp);
R = imnoise2('salt & pepper', M, N, 0, 0.1);
c = find (R==1);
gs = gp;
gs(c) = 255;

imshow(gs)

    % iv) Lognormal
f1_lognormal = imnoise2('lognormal',M,N); 
f1_lognormal = im2double(f1).*f1_lognormal;
imshow(f1_lognormal)

    % v) Rayleigh
f1_rayleigh = imnoise2('rayleigh',M,N);
f1_rayleigh = im2double(f1).*f1_rayleigh;
imshow(f1_rayleigh)

    % vi) Exponential
f1_exponential = imnoise2('exponential',M,N);
f1_exponential = im2double(f1).*f1_exponential;
imshow(f1_exponential)

    % vii) Erlang
f1_erlang = imnoise2('erlang',M,N);
f1_erlang = im2double(f1).*f1_erlang;
imshow(f1_erlang)

figure(3),
subplot(4,2,1), imshow(f1), title('Original');
subplot(4,2,2), imshow(edge(f1_uniform,'log')), title('Uniform');
subplot(4,2,3), imshow(edge(f1_gaussian,'log')), title('Gaussian');
subplot(4,2,4), imshow(edge(gs,'log')), title('Salt & Pepper');
subplot(4,2,5), imshow(edge(f1_lognormal,'log')), title('Lognormal');
subplot(4,2,6), imshow(edge(f1_rayleigh,'log')), title('Rayleigh');
subplot(4,2,7), imshow(edge(f1_exponential,'log')), title('Exponential');
subplot(4,2,8), imshow(edge(f1_erlang,'log')), title('Erlang');

figure(4),
subplot(4,2,1), imshow(f1), title('Original');
subplot(4,2,2), imshow(edge(f1_uniform,'Canny')), title('Uniform');
subplot(4,2,3), imshow(edge(f1_gaussian,'Canny')), title('Gaussian');
subplot(4,2,4), imshow(edge(gs,'Canny')), title('Salt & Pepper');
subplot(4,2,5), imshow(edge(f1_lognormal,'Canny')), title('Lognormal');
subplot(4,2,6), imshow(edge(f1_rayleigh,'Canny')), title('Rayleigh');
subplot(4,2,7), imshow(edge(f1_exponential,'Canny')), title('Exponential');
subplot(4,2,8), imshow(edge(f1_erlang,'Canny')), title('Erlang');

% b2)Fig2.tif
[M, N] = size(f2);

    % i)Uniform
f2_uniform = imnoise2('uniform',M,N);
f2_uniform = im2double(f2).*f2_uniform;

    % ii)Gaussian
f2_gaussian = imnoise2('gaussian',M,N);
f2_gaussian = im2double(f2).*f2_gaussian;
imshow(f2_gaussian)

    % iii) Salt & Pepper
% Pepper Noise
[M, N] = size(f2);
R = imnoise2('salt & pepper', M, N, 0.1, 0);
c = find (R==0);
gp = f2;
gp(c) = 0;

% Salt Noise
[M, N]= size(gp);
R = imnoise2('salt & pepper', M, N, 0, 0.1);
c = find (R==1);
gs = gp;
gs(c) = 255;

imshow(gs)

    % iv) Lognormal
f2_lognormal = imnoise2('lognormal',M,N); 
f2_lognormal = im2double(f2).*f2_lognormal;
imshow(f2_lognormal)

    % v) Rayleigh
f2_rayleigh = imnoise2('rayleigh',M,N);
f2_rayleigh = im2double(f2).*f2_rayleigh;
imshow(f2_rayleigh)

    % vi) Exponential
f2_exponential = imnoise2('exponential',M,N);
f2_exponential = im2double(f2).*f2_exponential;
imshow(f2_exponential)

    % vii) Erlang
f2_erlang = imnoise2('erlang',M,N);
f2_erlang = im2double(f2).*f2_erlang;
imshow(f2_erlang)

figure(5),
subplot(4,2,1), imshow(f2), title('Original');
subplot(4,2,2), imshow(edge(f2_uniform,'log')), title('Uniform');
subplot(4,2,3), imshow(edge(f2_gaussian,'log')), title('Gaussian');
subplot(4,2,4), imshow(edge(gs,'log')), title('Salt & Pepper');
subplot(4,2,5), imshow(edge(f2_lognormal,'log')), title('Lognormal');
subplot(4,2,6), imshow(edge(f2_rayleigh,'log')), title('Rayleigh');
subplot(4,2,7), imshow(edge(f2_exponential,'log')), title('Exponential');
subplot(4,2,8), imshow(edge(f2_erlang,'log')), title('Erlang');

figure(6),
subplot(4,2,1), imshow(f2), title('Original');
subplot(4,2,2), imshow(edge(f2_uniform,'Canny')), title('Uniform');
subplot(4,2,3), imshow(edge(f2_gaussian,'Canny')), title('Gaussian');
subplot(4,2,4), imshow(edge(gs,'Canny')), title('Salt & Pepper');
subplot(4,2,5), imshow(edge(f2_lognormal,'Canny')), title('Lognormal');
subplot(4,2,6), imshow(edge(f2_rayleigh,'Canny')), title('Rayleigh');
subplot(4,2,7), imshow(edge(f2_exponential,'Canny')), title('Exponential');
subplot(4,2,8), imshow(edge(f2_erlang,'Canny')), title('Erlang');
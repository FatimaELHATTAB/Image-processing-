  % lecture de l'image

A = imread('home','jpg') 


% afficher sur l'écran 
subplot(3,3,1) ;
image(A)

% affichage des dimensions

whos A

% Enregistrement image 

imwrite(A,'home.png') 
imwrite(A,'home.tif') 

Apng =  imread('home','png') 
Atiff =  imread('home','tif') 
% AFFICHAGE DE DIMENSION 
whos Apng 
whos Atiff

% Comparaison 
% Différence de mémoire 


%CONVERSION EN NIVEAU DE GRIS
G = rgb2gray(A) ;
subplot(3,3,2) ;
imshow(G) ;
%CONVERSION EN BINAIRE 
BW = im2bw(A,0.2) ;
subplot(3,3,3) ;
    imshow(BW) ;
axis on;
title('binaire');

%TRACER L'histogramme 
subplot(3,3,6) ;

imhist(A) 
%IMAGE INVERSE DE A et affichage 


imgInv = imcomplement(A);
subplot(3,3,4);
imshow(imgInv);
axis on;
title('Inverse');






%CONVERTIR RGB EN HSV
imgHSV = rgb2hsv(A) 
subplot(3,3,5) ;
imshow(hs) 
axis on;
title('HSV');



% Niveaux de rouge

imgRed = imgHSV;
imgRed(:,:,[2 3]) = 0;
subplot(3,3,7);
imshow(imgRed);
axis('image');
axis on;
title('Image Rouge');




% Niveaux de vert

imgVert = imgHSV;
imgVert(:,:,[1 3]) = 0;
subplot(3,3,8);
imshow(imgVert);
axis('image');
axis on;
title('Image Verte');

% Niveaux de bleu

imgBlue= imgHSV;
imgBlue(:,:,[1 2]) = 0;
subplot(3,3,9);
imshow(imgBlue);
axis('image');
axis on;
title('Image Bleue');

subplot(3,3,6) 

imageInit = imgBlue + imgVert + imgRed 
imshow(imageInit) 
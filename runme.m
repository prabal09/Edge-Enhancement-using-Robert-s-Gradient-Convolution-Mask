fig_ap = 'airplane_grayscale.png';
%fig_ap = 'airplane1.PNG';
figure,imshow(imread(fig_ap))
title('Original Image')
h1 = [1 0;0 -1];h2 = [0 1;-1 0];
M1 = GenerateGradientImage(fig_ap,h1,h2,"type1");
figure,imshow(mat2gray(M1,[0,255]),[])
title('Type 1')
M2 = GenerateGradientImage(fig_ap,h1,h2,"type2");
figure,imshow(mat2gray(M2,[0,255]),[])
title('Type 2: T=25')
M3 = GenerateGradientImage(fig_ap,h1,h2,"type3");
figure,imshow(mat2gray(M3,[0,255]),[])
title('Type 3: T=25;LG=255')
M4 = GenerateGradientImage(fig_ap,h1,h2,"type4");
figure,imshow(mat2gray(M4,[0,255]),[])
title('Type 4: T=25;LB=0')
M5 = GenerateGradientImage(fig_ap,h1,h2,"type5");
figure,imshow(mat2gray(M5,[0,255]),[])
title('Type 5: T=25;LG=255;LB=0')

% imf1 = cat(2,imread(fig_ap),M1);
% imf2 = cat(2,M2,M3);
% imf3 = cat(2,M4,M5);
% imf4 = cat(1,imf1,imf2);
% imf5 = cat(1,imf4,imf3);
% imshow(mat2gray(imf5,[0,255]),[])
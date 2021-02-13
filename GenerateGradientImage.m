function [M] = GenerateGradientImage(fig,h1,h2,varargin)
img = imread(fig);
if size(size(img)) == [1,3]
    img = rgb2gray(img);
end
G = zeros(size(img,1),size(img,2));img=double(img);
for x = 1:size(img,1)-1
    for y = 1:size(img,2)-1
        %f = [img(x,y) img(x,y+1);img(x+1,y) img(x+1,y+1)];
        %G(x,y) = floor(sqrt(sum(sum(conv2(f,h1).^2+(conv2(f,h2)).^2))));
        %G(x,y) = sqrt(power(sum(sum(convolve2D(f,h1))),2)+power(sum(sum(convolve2D(f,h2))),2));
        G(x,y) = sqrt(power(ConvImg(img,x,y,h1),2)+ power(ConvImg(img,x,y,h2),2));
    end
end
M = img;
if varargin{1} == "type1"
    M = G;
elseif varargin{1} == "type2"
    T = 25; 
    for i = 1:size(G,1)
        for j = 1:size(G,2)
            if G(i,j)>=T
                M(i,j) = G(i,j);
            end
        end
    end
elseif varargin{1} == "type3"
    T = 25;LG =255;
    M(G>=T) = LG;
elseif varargin{1} == "type4"
    T = 25;LB =0;
    M = G;
    M(G<T) = LB;
elseif varargin{1} == "type5"
    T = 25;LG =255;LB=0;
    M(G>=T)=LG;
    M(G<T) = LB;
end
M = round(M);
function [sum] = ConvImg(A,x,y,h)
sum = 0;
for i=1:size(h,1)
    for j=1:size(h,2)
        sum = sum+h(i,j)*A(x+i-1,y+j-1);
    end
end
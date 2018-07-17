a = imread('ml.jpg');
b = imresize(a,[256 256]);
c = rgb2gray(b);
d = 0;
int8 i;
int8 j;
for i=1:256
    for j=1:255
        d(i,j)=c(i,j+1)-c(i,j);
    end
end

imshow(d)
entropy(c)
entropy(d)
        
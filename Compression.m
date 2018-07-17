s = imread('sehwag.jpg')
s1 = rgb2gray(s)

p = imread('sehwag c.jpg')
p1 = rgb2gray(p)

entropy (p1)
entropy (s1)

figure(1);
imshow(s)

figure(2);
imshow(s1)

figure(3);
imshow(p)

figure(4);
imshow(p1)




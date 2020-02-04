clc
clear all
close all;
obj=videoinput('winvideo',1,'YUY2_320x240')
set(obj, 'SelectedSourceName', 'input1','ReturnedColorSpace','grayscale','timeout',20)
src_obj = getselectedsource(obj);
get(src_obj)
preview(obj);
pause;
frame = getsnapshot(obj);
imwrite(frame,'b5.jpg');
figure,imshow(frame)
% image(frame); 
delete(obj); 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a=im2bw(frame);
% figure, imshow(a,[]);
% b=edge(a,'canny');
% figure,imshow(b,[]);
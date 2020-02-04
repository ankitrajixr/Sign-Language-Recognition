clc;
clear all;
close all;
obj=videoinput('winvideo',2,'YUY2_320x240')
set(obj, 'SelectedSourceName', 'input1','ReturnedColorSpace','rgb','timeout',20)
src_obj = getselectedsource(obj);
get(src_obj)
preview(obj);
pause(5)
img = getsnapshot(obj);
%img=imresize(img,[256,256]);
%img=imresize(img,[300,400]);
delete(obj);
imwrite(img,'8.jpg')
figure,imshow(img,[]);
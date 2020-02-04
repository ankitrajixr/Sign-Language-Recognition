% ProjectHGR - Hand Gesture Recognizer Project
% ----------------------------------------------------------------
%
% Clear and Close Everything
close all
clear all;
clc;




% ----------------------------------------------------------------
% Recognize the Sample
% obj=videoinput('winvideo',2,'YUY2_320x240');
% set(obj, 'SelectedSourceName', 'input1','ReturnedColorSpace','rgb','timeout',20)
% src_obj = getselectedsource(obj);
% get(src_obj)
% preview(obj);
% pause;
% img = getsnapshot(obj);
% %img=imresize(img,[300,400]);
% delete(obj);
% imwrite(img,'img.jpg')
% figure,imshow(img,[]);
% % %input='hsv1.jpg';
input='img.jpg';
results=hgr(input);
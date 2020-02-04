clc;
clear all;
close all;

for i=1:8
    if i<=4
    sig=imread(sprintf('a%d.jpg',i));
    else
    sig=imread(sprintf('b%d.jpg',i-4));
    end
    [rr,cc,dd]=size(sig);
    if dd==3
    sg{i}=rgb2gray(sig);
    end
    sg{i}=sig;
     %sg{i}=edge(sig,'canny')
%     sg=cell2mat(sg(i));
%     sg=rgb2gray(sg);
    %figure,imshow(sg,[]);impixelinfo;
end



% [namefile,pathname]=uigetfile('*.*','Select image');
%         [img,map]=imread(strcat(pathname,namefile));
%   
%          [rr cc di]=size(img);
%       if di==3
%           img=rgb2gray(img);
%       end   
obj=videoinput('winvideo',2,'YUY2_320x240')
set(obj, 'SelectedSourceName', 'input1','ReturnedColorSpace','grayscale','timeout',20)
src_obj = getselectedsource(obj);
get(src_obj)
preview(obj);
pause;
img = getsnapshot(obj);
%imwrite(img,'5.jpg');
figure,imshow(img)
dg{1}=img;
delete(obj)
%img=edge(img,'canny');
% figure,imshow(img,[]);title('no database image');
nT=8;
%%%%%%%%%%%%fink%%%%%%
for i1=1:nT
   [colorhistfull binfully]=fink(sg{1,i1});%finding hg and hc
    colorhist{i1}=colorhistfull;
     binfull{i1}=binfully;  
    
end   

 for i1=1:1
    [colorhistfull1 binfully1]=fink(dg{1,i1});%finding hg and hc
     colorhist1{i1}=colorhistfull1;
      binfull1=binfully1;  
     
 end   


for i=1:8
    
g_total(:,i)=cell2mat(binfull(i))';
    
end


% net = feedforwardnet(10);
% net = train(net,g_total,t);
% 
% y(mk)= net(binfull1')
P=g_total;
T=[0 0 0 0 1 1 1 1]
     %plotpv(P,T);
%Create a perceptron

net = perceptron;
%Train a perceptron

%ADAPT returns a new network object that performs as a better classifier, the network output, and the error. This loop allows the network to adapt for xx passes, plots the classification line, and continues until the error is zero.

E = 1;
net.adaptParam.passes = 1;
%linehandle = plotpc(net.IW{1},net.b{1});
n = 0;
while (sse(E) & n<1000)
   n = n+1;
   [net,Y,E] = adapt(net,P,T);
   %linehandle = plotpc(net.IW{1},net.b{1},linehandle);
   drawnow;
end
% show perceptron structure
view(net);
% For example, classify an input vector of [0.7; 1.2]
M=binfull1';
p = P(:,2);
y = net(M)
gk2=y;
% fg=round(y);
% fg=uint8(fg);
% ld=find(fg>=4);rr
% 
% 
% 
%   luf=sum(y);
%   fgh=luf/10;
%   gk2=round(fgh);

     if (gk2(1)==0)
    msgbox('1 letter');
     elseif (gk2(2)==1)    
    msgbox('2 letter');
     elseif (gk2(3)==1)    
    msgbox('3 letter');    
     elseif (gk2(4)==1)
    msgbox('4 letter') 
     elseif (gk2(5)==1)
      msgbox('5 letter')     
     end    
    
 
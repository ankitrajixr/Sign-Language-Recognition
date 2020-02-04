clc;
clear all;
close all;
for i=1:10
%     a=imread(sprintf('%d.jpg',i));
%     a=imresize(a,[240,320]);
   % imwrite(a,sprintf('%d.jpg',i))
[iml, desl, locl] = sift(sprintf('%d.jpg',i));
im11{i}=iml;
des11{i}=desl;
loc11{i}=locl;
end
%key(1:10)=[339,367,191,296,405,50,13,20,20,30];
save('database','im11','des11','loc11');

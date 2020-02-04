clc;
%clear all;
close all;
s=serial('COM4');
fopen(s);
a=fread(s)
fclose(s);
for i=1:size(a,1)
disp(char(a(i)))

end
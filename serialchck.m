clc;
clear all;
close all;
s = serial('COM5');
fopen(s)
%Use the fprintf function to configure the scope to measure the peak-to-peak voltage of the sine wave, return the measurement type, and return the peak-to-peak voltage.

fprintf(s,'MEASUREMENT:IMMED:TYPE PK2PK')
fprintf(s,'MEASUREMENT:IMMED:TYPE?')
fprintf(s,'MEASUREMENT:IMMED:VALUE?')
%Because the default value for the ReadAsyncMode property is continuous, data associated with the two query commands is automatically returned to the input buffer.

s.BytesAvailable
%ans =
 %   21
%Use fscanf to read the measurement type. The operation will complete when the first terminator is read.

meas = fscanf(s)
%meas =
%PK2PK
%Use fscanf to read the peak-to-peak voltage as a floating-point number, and exclude the terminator.

pk2pk = fscanf(s,'%e',14)

%Disconnect s from the scope, and remove s from memory and the workspace.

fclose(s)
delete(s)
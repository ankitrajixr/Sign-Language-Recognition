function [colorhistfull binfully]=fink(h)
[r1,c1]=size(h);
ks=c1/4;
ks=ceil(ks);
ml=4.*ks;
kl=ml-c1;
h= padarray(h,[0,kl],'post' ) ;
%figure,imshow(h,[])

     por1=h(1:r1,1:ks);
     %%disp('por1');
     %%disp(por1);
   colorhist1=imhist(uint8(por1));
   %%disp(colorhist1);
   por2=h(1:r1,ks:(2*ks));
   colorhist2=imhist(uint8(por2));
   por3=h(1:r1,2*ks:(3*ks));
   colorhist3=imhist(uint8(por3));
   por4=h(1:r1,3*ks:4*ks);
   colorhist4=imhist(uint8(por4));
   colorhistfull=[colorhist1 colorhist2 colorhist3 colorhist4];
  
   %gradient filter
   filt1=[-1/2 0 1/2];
   filt2=[-1/2 0 1/2]';
   filtpor1=round(abs(imfilter(por1,filt1)));
   %pause;
   %%disp('filtpor1');
   %%disp(filtpor1);
   %figure,imshow(filtpor1);
   filtpor11=round(abs(imfilter(filtpor1,filt2)));
   [gx, gy]=imgradientxy(por1);
   
   [gmag, gdir]= imgradient(gx,gy);
   %%disp('gmag1');
   %%disp(gmag);
   %%disp('gdir1');
    %%disp(gdir);
    %figure,imshow(gdir,[]);
  % pause;
  % pause;
   gdir=gdir(:);
   lengthdir=length(gdir);
   bin1=0;bin2=0;bin3=0;bin4=0;bin5=0;bin6=0;bin7=0;bin8=0;bin9=0;
   
   for i=1:lengthdir
       
     if (gdir(i)<0)
         gdir(i)=gdir(i)+180;
     end
   end
   for i=1:lengthdir
       
     if (gdir(i)>=0&&gdir(i)<=20)
         bin1=bin1+1;
         
     end
      if (gdir(i)>=21&&gdir(i)<=40)
         bin2=bin2+1;
         
      end
     if (gdir(i)>=41&&gdir(i)<=60)
         bin3=bin3+1;
         
     end
     if (gdir(i)>=61&&gdir(i)<=80)
         bin4=bin4+1;
         
     end
     if (gdir(i)>=81&&gdir(i)<=100)
         bin5=bin5+1;
         
     end
     if (gdir(i)>=101&&gdir(i)<=120)
         bin6=bin6+1;
         
     end
     if (gdir(i)>=121&&gdir(i)<=140)
         bin7=bin7+1;
         
     end
     if (gdir(i)>=141&&gdir(i)<=160)
         bin8=bin8+1;
         
     end
     if (gdir(i)>=161&&gdir(i)<=180)
         bin9=bin9+1;
         
     end
     
   end
  
   binpor1=[bin1 bin2 bin3 bin4 bin5 bin6 bin7 bin8 bin9];
   %%disp('bin');
   %%disp(binpor1);
           
   filtpor2=round(abs(imfilter(por2,filt1)));
   filtpor21=round(abs(imfilter(filtpor2,filt2)));
   [gx gy]=imgradientxy(por2);
   
   [gmag gdir]= imgradient(gx,gy);
   %disp('gmag2');
   %disp(gmag);
   %disp('gdir2');
    %disp(gdir);
   
   gdir=gdir(:);
   lengthdir=length(gdir);
   bin1=0;bin2=0;bin3=0;bin4=0;bin5=0;bin6=0;bin7=0;bin8=0;bin9=0;
   
   for i=1:lengthdir
       
     if (gdir(i)<0)
         gdir(i)=gdir(i)+180;
     end
   end
   for i=1:lengthdir
       
     if (gdir(i)>=0&&gdir(i)<=20)
         bin1=bin1+1;
         
     end
      if (gdir(i)>=21&&gdir(i)<=40)
         bin2=bin2+1;
         
      end
     if (gdir(i)>=41&&gdir(i)<=60)
         bin3=bin3+1;
         
     end
     if (gdir(i)>=61&&gdir(i)<=80)
         bin4=bin4+1;
         
     end
     if (gdir(i)>=81&&gdir(i)<=100)
         bin5=bin5+1;
         
     end
     if (gdir(i)>=101&&gdir(i)<=120)
         bin6=bin6+1;
         
     end
     if (gdir(i)>=121&&gdir(i)<=140)
         bin7=bin7+1;
         
     end
     if (gdir(i)>=141&&gdir(i)<=160)
         bin8=bin8+1;
         
     end
     if (gdir(i)>=161&&gdir(i)<=180)
         bin9=bin9+1;
         
     end
     
   end
   binpor2=[bin1 bin2 bin3 bin4 bin5 bin6 bin7 bin8 bin9];
   filtpor3=round(abs(imfilter(por3,filt1)));
   filtpor31=round(abs(imfilter(filtpor3,filt2)));
   [gx gy]=imgradientxy(por3);
   
   [gmag gdir]= imgradient(gx,gy);
   %disp('gmag3');
   %disp(gmag);
   %disp('gdir3');
    %disp(gdir);
   
   gdir=gdir(:);
   lengthdir=length(gdir);
   bin1=0;bin2=0;bin3=0;bin4=0;bin5=0;bin6=0;bin7=0;bin8=0;bin9=0;
   
   for i=1:lengthdir
       
     if (gdir(i)<0)
         gdir(i)=gdir(i)+180;
     end
   end
   for i=1:lengthdir
       
     if (gdir(i)>=0&&gdir(i)<=20)
         bin1=bin1+1;
         
     end
      if (gdir(i)>=21&&gdir(i)<=40)
         bin2=bin2+1;
         
      end
     if (gdir(i)>=41&&gdir(i)<=60)
         bin3=bin3+1;
         
     end
     if (gdir(i)>=61&&gdir(i)<=80)
         bin4=bin4+1;
         
     end
     if (gdir(i)>=81&&gdir(i)<=100)
         bin5=bin5+1;
         
     end
     if (gdir(i)>=101&&gdir(i)<=120)
         bin6=bin6+1;
         
     end
     if (gdir(i)>=121&&gdir(i)<=140)
         bin7=bin7+1;
         
     end
     if (gdir(i)>=141&&gdir(i)<=160)
         bin8=bin8+1;
         
     end
     if (gdir(i)>=161&&gdir(i)<=180)
         bin9=bin9+1;
         
     end
     
   end
   binpor3=[bin1 bin2 bin3 bin4 bin5 bin6 bin7 bin8 bin9];
   
   filtpor4=round(abs(imfilter(por4,filt1)));
   filtpor41=round(abs(imfilter(filtpor4,filt2)));
   [gx gy]=imgradientxy(por4);
   
   [gmag gdir]= imgradient(gx,gy);
   %%disp('gmag3');
   %disp(gmag);
   %disp('gdir4');
    %disp(gdir);
   
   gdir=gdir(:);
   lengthdir=length(gdir);
   bin1=0;bin2=0;bin3=0;bin4=0;bin5=0;bin6=0;bin7=0;bin8=0;bin9=0;
   
   for i=1:lengthdir
       
     if (gdir(i)<0)
         gdir(i)=gdir(i)+180;
     end
   end
   for i=1:lengthdir
       
     if (gdir(i)>=0&&gdir(i)<=20)
         bin1=bin1+1;
         
     end
      if (gdir(i)>=21&&gdir(i)<=40)
         bin2=bin2+1;
         
      end
     if (gdir(i)>=41&&gdir(i)<=60)
         bin3=bin3+1;
         
     end
     if (gdir(i)>=61&&gdir(i)<=80)
         bin4=bin4+1;
         
     end
     if (gdir(i)>=81&&gdir(i)<=100)
         bin5=bin5+1;
         
     end
     if (gdir(i)>=101&&gdir(i)<=120)
         bin6=bin6+1;
         
     end
     if (gdir(i)>=121&&gdir(i)<=140)
         bin7=bin7+1;
         
     end
     if (gdir(i)>=141&&gdir(i)<=160)
         bin8=bin8+1;
         
     end
     if (gdir(i)>=161&&gdir(i)<=180)
         bin9=bin9+1;
         
     end
     
   end
   binpor4=[bin1 bin2 bin3 bin4 bin5 bin6 bin7 bin8 bin9];
   binfully=[binpor1 binpor2 binpor3 binpor4];
   
 
   
   
   
   
%    histpor1=imhist(uint8(filtpor11))
%    
%    filtpor2=round(abs(imfilter(por2,filt1)))
%    filtpor21=round(abs(imfilter(filtpor2,filt2)))
%    histpor2=imhist(uint8(filtpor21))
%    
%    
%    filtpor3=round(abs(imfilter(por3,filt1)))
%    filtpor31=round(abs(imfilter(filtpor3,filt2)))
%    histpor3=imhist(uint8(filtpor31))
%    
%    filtpor4=round(abs(imfilter(por4,filt1)))
%    filtpor41=round(abs(imfilter(filtpor4,filt2)))
%    histpor4=imhist(uint8(filtpor41))
%    
%    histpor{i}=[histpor1 histpor2 histpor3 histpor4];

%    colorhist{i}=[colorhist1 colorhist2 colorhist3 colorhist4];
%    size(colorhist{i})
   
   %size(histpor{i})
   
%    %disp(por1);
%    %disp(por2);
%    %disp(por3);
%    %disp(por4);
   %pause
%     

img=imread('test_image.bmp');
red=img(:,:,1);
temp_red=red;
green=img(:,:,2);
blue=img(:,:,3);
str=input('enter string to encode','s');
[x,y,z]=size('test_image.bmp');
i=1;
j=1;
for ch=str
    binary=dec2bin(ch);
    for store=binary
        if j>256 
            j=1;
            i=i+1;
        end
        temp=dec2bin(red(i,j));
        temp=str2num(temp);
        temp=temp/10;
        temp=temp*10;
        store=str2num(store);
        temp=temp+store;
        red(i,j)=temp;
        j=j+1; 
    end 
end
%{
k=1;
while k<8
    if j>256 
        j=1;
        i=i+1;
    end
    temp=dec2bin(red(i,j));
    temp=str2num(temp);
    temp=temp/10;
    temp=temp*10;
    red(i,j)=temp;
    j=j+1;
    k=k+1;
end
%}
%create sinbad bathy%
clc; clear all;

for x=1:100
    if x ==1
        z(x)=-2.55
    elseif (x <35)
        z(x)=-2.55
    elseif (x >= 35) && (x <= 54.8)
        z(x)=z(x-1)+(1/10)
    elseif (x > 54.8) && (x <= 57.5)
        z(x)=z(x-1)-(1/4.7)
    elseif (x > 57.5) && (x <= 68)
        z(x)=z(x-1)+(1/95)
    else 
        z(x)=z(x-1)+(1/7.5)
    end
end 
x=(1:1:100);
save('sinbad_bathy.mat','x','z');
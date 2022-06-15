clear;
disp("Trapezoidal rule")
deff('y=f(x)','y=1/x')
a=1;b=7;n=8,h=(b-a)/n
s1=0;s2=0
for i=1:n
    x=a+i*h;y=f(x)
    if(i==0/i==n)
        s1=s1+y
    else
        s2=s2+y
    end   
end
I=(h/2)*(s1+2*s2)
disp('value of integration is',I)

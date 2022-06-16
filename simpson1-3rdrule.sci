funcprot(0);
function y=f(x)
    y=1/(1+x);
endfunction
function ans=simp13(a,b,n,f)
    h=(b-a)/n;
    sum=0;
    for i=1:n-1
        x=a+i*h;
        if modulo(i,2)==0
            sum=sum+2*f(x);
        else 
            sum=sum+4*f(x);
        end 
    end
    ans=(h/3)*(f(a)+f(b)+sum);
endfunction

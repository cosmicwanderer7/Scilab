funcprot(0);
function y=f(x)
    y=1/(1+x);
endfunction
function ans=simp38(a,b,n,f)//function definition of simpson
    h=(b-a)/n;
    sum=0;
    for i=1:n-1
        x=a+i*h;
        if modulo(i,3)==0
            sum=sum+2*f(x);
        else 
            sum=sum+3*f(x);
        end 
    end
    ans=(3*h/8)*(f(a)+f(b)+sum);
endfunction

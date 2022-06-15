function y=f(x)
    y=x^3-x-2;
endfunction

function y=df(x)
    y=3*x^2-1;
endfunction

function y=NRMethod(x0)
    if df(x0)==0 then
        y=0
    end
    while(abs(f(x0))>0.0001)
        x0=x0-f(x0)/df(x0);
    end
    y=x0;
endfunction

    


function y=f(x)
y=x^3-x-2;
endfunction

function y=BMethod(a,b)
 AA=f(a);
 BB=f(b);
 if AA*BB>0 then
    y=0;
    return;
 end
 while(%T)
   c=(a+b)/2;
   CC=f(c);
   if(abs(CC)<0.001)
      y=c;
      return
   end
   if(AA*CC>0)
      a=c;
      AA=CC;
   else
      b=c;  
      BB=CC;
   end 
 end
endfunction

//f(1)
//f(2)
//BMethod(1,2)
    

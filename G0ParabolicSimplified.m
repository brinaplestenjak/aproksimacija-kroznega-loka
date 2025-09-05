function [b] = G0ParabolicSimplified(fi,e)
%Calculates the control points for G0 parabolic approximation using
%simplified error.
c = cos(fi);
s = sin(fi);

q2 = @(t,d) 1/4*((d - c).^2*t.^2 - (d + c).^2 + 4);
simerr = @(t,d) (t.^2 - 1)*q2(t,d);

tl = 0;
tr = 1;
while(true)
    T = 1/2*(tr + tl);
    fun = @(x) q2(T,x);
    
    d = fzero(fun,1);

    dif = simerr(0,d) + simerr(sqrt(d.^2 + c^2 - 2)/(d-c),d);
    if (abs(dif) <= e)
        break
    end
    if(dif < 0)
        tl = T;
    else
        tr = T;
    end
end

b =[c,d,c;-s,0,s];
end


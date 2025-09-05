function [b] = G1Cubic(fi,e)
%Calculates the control points for G1 cubic approximation using radial error.
c = cos(fi);
s = sin(fi);

q = @(t,d) 1/16*((3*d*c -2*s).^2*t.^2 + (3*d*s + 4*c).^2 - 16);
raderr =@(t,d) sqrt((t.^2 - 1).^2 .* q(t,d) + 1) - 1;

tl = 0;
tr = 1;
while((tr - tl) > e)
    T = 1/2*(tr + tl);
    fun = @(x) q(T,x);    
    d = fzero(fun,[0,1.5]);  

    dif = raderr(0,d) + raderr(sqrt(12 - 3*d.^2 + 3*(-4 + 3*d.^2)* cos(2*fi) - 20*d*sin(2*fi))/(sqrt(2)*sqrt((3*d*c - 2*s).^2)),d);

    if(dif > 0)
        tl = T;
    else
        tr = T;
    end
end
b =[c,c + d*s,c + d*s, c; -s,-s+d*c,s-d*c, s];
end


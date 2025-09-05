function [b] = G2Cubic(fi)
%Calculates G2 cubic approximation.
c = cos(fi);
s = sin(fi);
d = (-2*c*s + 2*s*sqrt(c^2 + 3))/3;

b =[c,c+d*s,c+d*s,c;-s,-s+d*c,s-d*c,s];
end



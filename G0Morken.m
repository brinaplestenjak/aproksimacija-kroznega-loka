function [b] = G0Morken(fi)
%Calculates control points for G0 parabolic approximation according to
%simplified radial error using K. Mørken's approach.
c = cos(fi);
s = sin(fi);
d = -sqrt(2)*c + sqrt(2 + 2*sqrt(2) + c^2);


b =[c, d, c; -s,0, s];
end


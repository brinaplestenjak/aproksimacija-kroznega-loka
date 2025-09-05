function [b] = G1Parabolic(fi)
%Calculates G1 parabolic approximation.
c = cos(fi);
s = sin(fi);

b =[c, 1/c, c; -s,0, s];
end


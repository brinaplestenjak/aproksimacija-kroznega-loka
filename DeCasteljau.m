function [p] = DeCasteljau(b,t)
% calculates the points on the bezier curve given control points b
% on t in [-1,1] using DeCasteljau algorithm
n = size(b, 2);
m = length(t);
p = zeros(2,m);

for j = 1:m
    b_i = b;
    w0 = (1 - t(j))/2; 
    w1 = (1 + t(j))/2;
    for r = 2:n 
        for i = n:-1:r 
            b_i(:,i) = w0.*b_i(:,i-1) + w1.*b_i(:,i);
        end    
    end
    p(:,j) = b_i(:,n);
end
end
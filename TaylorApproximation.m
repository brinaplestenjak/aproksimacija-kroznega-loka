function [] = TaylorApproximation(fi,s,n)
%Plots taylor approximation of angle [-fi,fi], of degree n on s sample
%points.

t = linspace(-fi,fi,s);

[cosx,siny] = Taylor(fi,s,n);

%full circle
cos_values = cos(t);
sin_values = sin(t);

%detailed arc we are approximating
l = linspace(0,2*pi,s*1000);
cosfull_values = cos(l);
sinfull_values = sin(l);

fig = figure();
hold on;
plot(cosfull_values,sinfull_values, 'Color',  [0.5 0.5 0.5], 'LineStyle', '--', 'LineWidth', 1);
plot(cosx, siny, 'Color', 'k', 'LineWidth', 1.5);
plot(cos_values,sin_values,'Color', [0.5 0.5 0.5],'LineWidth', 1.5);
grid on;
axis equal;

xline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 
yline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 

end


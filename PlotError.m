function [] = PlotError(b, s)
% Plots the error of the reparametrized Bézier curve given control points b
% on s sample points.
t = linspace(-1, 1, s);
p = DeCasteljau(b,t);

x = p(1,:);
y = p(2,:);

radial_error = sqrt(x.^2 + y.^2) - 1;
simplify_error = x.^2 + y.^2 -1;

fig = figure();
hold on;
plot(t,radial_error, 'Color', 'k','LineStyle', '-', 'LineWidth', 1);
plot(t,simplify_error, 'Color', 'k','LineStyle', '--', 'LineWidth', 1);

xline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 
yline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 

end


function [] = PlotApproximation(b,s)
% Plots the reparametrized Bézier curve and control polygon 
% given control points b on s sample points, where t in [-1, 1].

t = linspace(-1, 1, s);
p = DeCasteljau(b, t);

x = p(1,:);
y = p(2,:);

%full circle
l = linspace(0,2*pi,s*100);
cosfull_values = cos(l);
sinfull_values = sin(l);

% Plot the Bézier curve
fig = figure();
hold on;
plot(cosfull_values,sinfull_values, 'Color', [0.5 0.5 0.5], 'LineStyle', '--', 'LineWidth', 1);
plot(x, y, 'Color', 'k', 'LineStyle', '-', 'LineWidth', 1);   

% Plot the control polygon
bx = b(1, :); 
by = b(2, :); 
plot(bx, by, '.-', 'LineWidth', 0.5, 'MarkerSize', 20, 'Color', 'k');
axis equal;

xline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 
yline(0, 'Color', [0.5, 0.5, 0.5], 'LineWidth', 1); 
end


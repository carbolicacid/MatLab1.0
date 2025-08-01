x = [0 1 2 3];
y = [2.1 7.1 19.4 61.2];

p = polyfit(x, y, 2);       % Fit 2nd-degree polynomial
x_new = 0:0.1:3;            % New x values for smooth curve
y_new = polyval(p, x_new);  % Evaluate polynomial at new x

plot(x, y, 'ro'); hold on;
plot(x_new, y_new, 'b-');
legend('Original Data', 'Fitted Polynomial');
grid on;

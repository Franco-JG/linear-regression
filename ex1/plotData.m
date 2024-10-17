function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.

figure(1, 'name', 'plotData', 'NumberTitle', 'off');

data = load('ex1data1.txt'); 
x = data(:, 1); y = data(:, 2);

plot(x, y, 'rx', 'markersize', 5);
xlim([4 24]);
ylim([-5 25]);
xticks(4:2:24);
yticks(-5:5:25);
ylabel('Profit in $10,000s');
xlabel('Population of City in 10,000s');

end
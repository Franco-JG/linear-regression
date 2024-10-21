function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
% =================================== YOUR CODE HERE ===================================
% Instructions: Perform a single gradient step on the parameter vector
%               theta.

% Hint: While debugging, it can be useful to print out the values
%       of the cost function (computeCost) and gradient here.

% Código para ir guardando la theta
theta_prev = theta;

p = size(X, 2);  % Número de características (o parámetros)
m = length(y);   % Número de ejemplos

% Se calcula la hipótesis (predicciones)
hypothesis = X * theta_prev;  % Vector de predicciones

% Calcula el error
errors = hypothesis - y;  % Diferencia entre predicciones y valores reales

% Se actualiza theta de manera simultánea
for j = 1:p
    % Calcula la derivada parcial dJ/d(theta_j) de forma vectorizada
    deriv = (errors' * X(:, j)) / m;  % Producto punto y promedio
    % Se actualiza theta_j
    theta(j) = theta_prev(j) - (alpha * deriv);  % Regla de actualización del gradiente
end

% ========================================================================
% Save the cost J in every iteration
J_history(iter) = computeCost(X, y, theta);  % Costo en la iteración actual
theta_history(iter, :) = theta';               % Historial de los valores de theta


end

end


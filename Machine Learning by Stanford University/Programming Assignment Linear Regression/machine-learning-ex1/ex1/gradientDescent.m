function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

n = length(theta);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    der = 0;
    temp = zeros(n,1);
    for j=1:n
        temp(j) = 0;
        
        for i=1:m
            x_col = X(i,:);
            pder = ((theta'*x_col') - y(i))*X(i,j);
            der = der + pder;
        end
        
        temp(j) = theta(j) - (der*alpha)/m;
        der = 0;
    end
    theta = temp;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta




for i=1:m
    zp = theta'*X(i,:)';
    J = J+(-y(i)*log(sigmoid(zp)) - (1-y(i))*log(1-sigmoid(zp)) );
end
n = size(theta) - 1;

for j=2:n+1
    J = J+(lambda*(theta(j))^2)/2;
end
J = J/m;

temp = zeros(size(theta));


for j = 1:n+1
    
    for i=1:m
        zp = theta'*X(i,:)';
        temp(j) = temp(j) + (sigmoid(zp)-y(i))*X(i,j);
    end
    temp(j) = temp(j)/m;
% =============================================================

end

for j=2:n+1
    temp(j) = temp(j) + (theta(j)*lambda)/m;
end

grad = temp;



% =============================================================

end

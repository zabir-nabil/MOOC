function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);



Xtp = [ones(m,1) X];

X = Xtp;

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% disp('X size');
% [size(X)]
% 
% disp('theta1 size');
% [size(Theta1)]
% disp('theta2 size');
% [size(Theta2)]


% 5000   401
% 25   401
% 10    26

for i=1:m
    a1 = X(i,:);
    z2 = a1*Theta1';
    a2 = g(z2);
    a2p = [1 a2];
    a2 = a2p;
    z3 = a2*Theta2';
    a3 = sigmoid(z3);
    [m, idx] = max(a3);
    p(i) = idx;
%     if(i==10)
%         p(i) = 10;
%     end
end
    
% =========================================================================


end

function sig = g(z)
sig = 1./(1+exp(-z));
end
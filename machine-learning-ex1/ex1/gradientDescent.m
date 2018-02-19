function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    % We are repeatedly updating the value of theta based on the cost
    % function minimum in the hypothesis. We have X' before the cost due
    % to the matrix multiplication rules. 
    % 1/m remains unchanged but the addition of alpha is there to portray 
    % the learning rate at which the the hypothesis updates its vlaue 
    % of theta.
    % Using theta = theta - ... is there to guarantee simultaneous updates
    % on the values of theta.
    
    theta = theta - ((alpha / m) * (X' * ((X * theta) - y)));
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

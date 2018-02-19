function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% We find the predicted value of the hypothesis and
% find the difference between that and the actual value.
% We then take the mean squared sum by adding all the square differences
% and averaging it over the number of examples in the training set.

% predictedValue = (X * theta);
% squaredErrors = (predictedValue - y) .^ 2;
% J = sum(squaredErrors) / (2 * m);

% More simplified notation
J = sum(((X * theta) - y) .^ 2) / (2 * m);

% =========================================================================

end

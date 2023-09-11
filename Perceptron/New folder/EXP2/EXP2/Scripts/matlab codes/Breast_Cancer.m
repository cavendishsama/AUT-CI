%% Comment or Uncoment each section or output you want to see
%% Importing data
data = readmatrix("data.txt");

% %% Without Normalizing
% X = data(2:end, 2:31);
% Y = data(2:end, 32);
% Perceptron.perceptron(X, Y, 100, 0.1, 1e6, "Sigmoid")

%% Normalizing 

X_norm = Perceptron.Normalizing(X);
Y_norm = Perceptron.Normalizing(Y);

% %% Sigmoid 
% 
% Perceptron.perceptron(X_norm, Y_norm, 100, 0.1, 1e6, "Sigmoid");
% 
%% Tanh 
% 
% Perceptron.perceptron(X_norm, Y_norm, 100, 0.2, 1e6, "Tanh");
% % 
%% Sigmoid With Bias
% 
X_bias = [X_norm, ones(569,1)];
% 
% Perceptron.perceptron(X_bias, Y_norm, 100, 0.1, 1e6, "Sigmoid");

%% Tanh with Bias

Perceptron.perceptron(X_bias, Y_norm, 100, 0.2, 1e6, "Tanh");

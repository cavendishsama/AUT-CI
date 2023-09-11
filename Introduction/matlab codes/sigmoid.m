function g = sigmoid(z)
g = zeros(size(z));
%==================%
g = (2 ./ (1 + exp(-z))) - 1;
end



function f = D_sigmoid(z)
f = zeros(size(z));
%==================%
%f = (1 - (sigmoid(z) .^ 2)) ./ 2;
f = (2 .* exp(-z)) ./ ((1 + exp(-z)) .^ 2);
end
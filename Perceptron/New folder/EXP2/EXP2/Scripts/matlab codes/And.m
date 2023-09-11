X = [
    [0, 0];
    [0, 1];
    [1, 0];
    [1, 1];
    ];
Y = [
    0;
    0;
    0;
    1;
    ];

weight = Perceptron.Rand(size(X, 2));
Epoch = 1000;
learning_rate = 0.5;
E_max = 1e6;
E = 0;

for i = 1:10000
    E = 0;
    for j = 1:size(4)
        o = Perceptron.O(X(j,:), weight, "Sigmoid");
        weight = weight + 0.5 * learning_rate * (Y(j) - o) * (1 - o ^ 2) * X(j,:);
        E = E + 0.5 * (Y(j) - o) ^ 2;
        if E > E_max 
            break
        end
    end
end
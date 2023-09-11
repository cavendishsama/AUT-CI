%% Comment or Uncoment each output you want to see
%% Or 
X_or = [
        [0, 0];
        [0, 1];
        [1, 0];
        [1, 1];
       ];
Y_or = [
        0;
        1;
        1;
        1;
        ];

w_sigmoid_or = Perceptron.perceptron(X_or, Y_or, 1000, 0.1, 1e6, "Sigmoid");
w_tanh_or = Perceptron.perceptron(X_or, Y_or, 1000, 0.1, 1e6, "Tanh");
w_relu_or = Perceptron.perceptron(X_or, Y_or, 1000, 0.1, 1e6, "ReLu");

%% And
X_and = [
        [0, 0];
        [0, 1];
        [1, 0];
        [1, 1];
       ];
Y_and = [
        0;
        0;
        0;
        1;
        ];

w_sigmoid_and = Perceptron.perceptron(X_and, Y_and, 1000, 0.1, 1e6, "Sigmoid");
w_tanh_and = Perceptron.perceptron(X_and, Y_and, 1000, 0.1, 1e6, "Tanh");
w_relu_and = Perceptron.perceptron(X_and, Y_and, 1000, 0.1, 1e6, "ReLu");

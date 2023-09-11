%% perceptron class
classdef Perceptron
    methods(Static)
        %%
        function output_ = Sigmoid(input_)
            output_ = 2 / (1 + exp(-input_)) - 1;
        end
        %%
        function output_ = Rand(input_)
            output_ = rand([1, input_]);
        end
        %%
        function output_ = ReLu(input_)
            if input_ <= 0 
                output_ = 0;
            else 
                output_ = input_ / 10;
            end
        end
        %%
        function output_ = O(feature, weight, Activation_Function)
            if Activation_Function == "Sgn" 
                output_ = sign(dot(feature, weight));
            elseif Activation_Function == "Tanh" 
                output_ = tanh(dot(feature, weight));
            elseif Activation_Function == "ReLu" 
                output_ = Perceptron.ReLu(dot(feature, weight));
            else 
                output_ = Perceptron.Sigmoid(dot(feature, weight));
            end
        end
         %%
            function [lst, weight] = perceptron(X, Y, Epoch, learning_rate, E_max, Activation_Function )
                lst = zeros([1, Epoch]);
                feature_size = size(X,2);
                weight = Perceptron.Rand(feature_size);
                dataset_size = size(X,1);
                for i = 1:Epoch 
                    E = 0;
                    for j = 1:dataset_size
                        o = Perceptron.O(X(j,:), weight, Activation_Function);
                        weight = weight + 0.5 * learning_rate * (Y(j) - o) * (1 - o ^ 2) * X(j, :);
                        E = E + 0.5 * (Y(j) - o) ^ 2;
                        if E > E_max
                            break
                        end
                    end
                    lst(i) = E;
                end
                plot(1:Epoch, lst);
            end
            %%
            function output_ = Normalizing(input_)
                input_ = input_ - min(input_);
                output_ = input_ ./ max(input_);
            end
    end
end
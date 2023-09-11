function h = sigmatrix(z)
h = zeros(1,2);
%==================%
    if ~exist('z','var') || isempty(z)
        n = input("enter number of rows: ");
        m = input("enter number of columns: ");
        for i = 1:n
            for j = 1:m
                p(i,j) = input("pls enter the elemnts: ");
            end
        end
        p = reshape(p,n,m);
        h(1) = sum(sigmoid(p), 'all');
        h(2) = sum(D_sigmoid(p), 'all');
    else
        h(1) = sum(sigmoid(z), 'all');
        h(2) = sum(D_sigmoid(z), 'all');
    end    
    
end
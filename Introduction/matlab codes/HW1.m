function f = HW1()
    n = input("enter number of rows: ");
    m = input("enter number of columns: ");
        for i = 1:n
            for j = 1:m
                p(i,j) = input("pls enter the elemnts: ");
            end
        end
        
    p = reshape(p,n,m);
    f = sum(tanh(p), 'all');

end
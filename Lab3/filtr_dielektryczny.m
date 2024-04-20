function [x,err_norm] = filtr_dielektryczny(A,b)
    % x = A\b;
    % err_norm(1) = norm(A*x-b);
    
    D = diag(diag(A));
    L = tril(A, -1);
    U = triu(A, 1);
    % 
    % M = -D \ (L + U);
    % bm = D \ b;
    % x = ones(length(b), 1);
    % iterations = 0;
    % err_norm(2) = norm(A*x-b);
    % while err_norm(2) > 1e-12 || iterations < 1000
    %     x_new = M*x + bm;
    %     err_norm(2) = norm(A*x_new - b);
    %     x = x_new;
    %     iterations = iterations + 1;
    % end

    x = ones(length(b), 1);
    M = -(D + L) \ U;
    bm = (D + L) \ b;
    iterations = 0;
    err_norm(3) = norm(A*x - b);
    while err_norm(3) > 1e-12 || iterations < 1000
         x_new = M*x + bm;
         err_norm(3) = norm(A*x_new - b);
         x = x_new;
         iterations = iterations + 1;
    end

end
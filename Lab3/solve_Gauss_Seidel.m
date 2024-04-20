function [A,b,M,bm,x,err_norm,time,iterations,index_number] = solve_Gauss_Seidel(N)
index_number = 193113;
L1 = 3;
[A,b] = generate_matrix(N, L1);

D = diag(diag(A));
L = tril(A, -1);
U = triu(A, 1);

x = 0*ones(N, 1);
M = -(D + L) \ U;
bm = (D + L) \ b;
time = [];
iterations = 0;
err_norm = norm(A*x - b);
tic;
while err_norm > 1e-12 && iterations < 1000
    x_new = M*x + bm;
    err_norm = norm(A*x_new - b);
    x = x_new;
    iterations = iterations + 1;
end
time = toc;
end
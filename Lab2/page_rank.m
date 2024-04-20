function [numer_indeksu, Edges, I, B, A, b, r] = page_rank()
    numer_indeksu = 193113;
    
    Edges = [1, 1, 6, 6, 7, 3, 3, 3, 2, 2, 2, 4, 4, 5, 5, 8, 2;
             4, 6, 4, 7, 6, 6, 5, 7, 3, 5, 4, 5, 6, 4, 6, 2, 8];
    
    
    N = 8
    I = speye(N);
    B = sparse(Edges(2, :), Edges(1, :), 1, N, N);
    L = 1./sum(B);
    A = spdiags(L.', 0, N, N);
    d = 0.85;
    b = ((1 - d) / N) * ones(N, 1);
    r = (I - d * B * A) \ b;
end
function plot_problem_5(N,time_Jacobi,time_Gauss_Seidel,iterations_Jacobi,iterations_Gauss_Seidel)
% Opis wektorów stanowiących parametry wejściowe:
% N - rozmiary analizowanych macierzy
% time_Jacobi - czasy wyznaczenia rozwiązania metodą Jacobiego
% time_Gauss_Seidel - czasy wyznaczenia rozwiązania metodą Gaussa-Seidla
% iterations_Jacobi - liczba iteracji wymagana do wyznaczenia rozwiązania metodą Jacobiego
% iterations_Gauss_Seide - liczba iteracji wymagana do wyznaczenia rozwiązania metodą Gauss-Seidla

for i = 1:length(N)
    [~, ~, ~, ~, ~,~, time_Jacobi(i), iterations_Jacobi(i), ~] = solve_Jacobi(N(i));
    [~, ~, ~, ~, ~,~, time_Gauss_Seidel(i), iterations_Gauss_Seidel(i), ~] = solve_Gauss_Seidel(N(i));
end

subplot(2,1,1);
plot(N,time_Jacobi);
hold on;
plot(N,time_Gauss_Seidel);
hold off;
title('Czas obliczeń w zależności od rozmiaru macierzy');
xlabel('Rozmiar macierzy');
ylabel('Czas [s]');
legend('Jacobi', 'Gauss-Seidel');

subplot(2,1,2);
bar(N, [iterations_Jacobi', iterations_Gauss_Seidel']);
title('Liczba iteracji w zależności od rozmiaru macierzy');
xlabel('Rozmiar macierzy');
ylabel('Liczba iteracji');
legend('Jacobi', 'Gauss-Seidel');
saveas(gcf, 'zadanie5.png');
end
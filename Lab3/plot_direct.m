function plot_direct(N,vtime_direct)
    % N - wektor zawierający rozmiary macierzy dla których zmierzono czas obliczeń metody bezpośredniej
    % vtime_direct - czas obliczeń metody bezpośredniej dla kolejnych wartości N
    for i = 1:length(N)
        [~, ~, ~, vtime_direct(i)] = solve_direct(N(i));
    end
    plot(N, vtime_direct);
    title('Pomiar czasu działania metody bezpośredniej');
    xlabel('N');
    ylabel('Time');
    saveas(gcf, 'zadanie2.png');
end
function plot_counts_mean(counts_mean)
    indexes = 1:length(counts_mean);
    plot(indexes, counts_mean, 'b.-');
    title('Counts Mean');
    xlabel('Index');
    ylabel('Mean Count');
    saveas(gcf, 'zadanie5.png');
end
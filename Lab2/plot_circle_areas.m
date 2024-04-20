function plot_circle_areas(circle_areas)
    indexes = 1:length(circle_areas);
    plot(indexes, circle_areas, 'b.-');
    title('Circle Areas');
    xlabel('Index');
    ylabel('Circle Area');
    saveas(gcf, 'zadanie3.png');
end
function plot_PageRank(r)
    pages = 1:length(r);
    bar(pages, r);
    title('Page Ranking');
    xlabel('Page');
    ylabel('Rank');
    saveas(gcf, 'zadanie7.png');
end

function plot_circles(a, circles, index_number)
    hold on; 
    side_length = a;
    x = [0, side_length, side_length, 0, 0];
    y = [0, 0, side_length, side_length, 0];
    plot(x, y, 'b', 'LineWidth', 2);
    for i = 1:size(3, circles)
        X = circles(1, i);
        Y = circles(2, i);
        R = circles(3, i);
        plot_circle(R, X, Y);
    end
    hold off;
end
function [circles, index_number, circle_areas, rand_counts, counts_mean] = generate_circles(a, r_max, n_max)
    index_number = 193113; % numer Twojego indeksu
    L1 = 3;
    circle_areas = zeros(n_max,1);
    rand_counts = zeros(n_max, 1);
    counts_mean = zeros(n_max, 1);    
    circles = zeros(3,n_max);
    circle = 1;
    number_draw = 0;
    while circle <= n_max
        number_draw = number_draw + 1;
        X = rand * a;
        Y = rand * a;
         R = rand * r_max;
        if X - R < 0 || X + R > a || Y - R < 0 || Y + R > a
            continue;
        end
        intersect = false;
        for j = 1:circle-1
            circle1 = [R, X, Y];
            circle2 = circles(:, j);
            distance = sqrt((circle1(2) - circle2(2))^2 + (circle1(3) - circle2(3))^2);
            radius_sum = circle1(1) + circle2(1);
            if distance < radius_sum
                intersect = true;
                break;
            end
        end
        if intersect == false
            circle_area = pi * R^2;
            if circle == 1
                circle_areas(circle) = circle_area;
                rand_counts(circle) = number_draw;
                counts_mean(circle) = rand_counts(circle);
            else
                circle_areas(circle) = circle_areas(circle-1) + circle_area;
                rand_counts(circle) = rand_counts(circle-1) + number_draw;
                counts_mean(circle) = mean(rand_counts(1:circle));
            end
            circles(:,circle) = [R, X, Y];
            circle = circle + 1;
            number_draw = 0;
        end
    end
end
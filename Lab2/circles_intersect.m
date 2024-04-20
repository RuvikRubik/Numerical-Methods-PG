function intersect = circles_intersect(circle1, circle2)
    distance = sqrt((circle1(1) - circle2(1))^2 + (circle1(2) - circle2(2))^2);
    radius_sum = circle1(3) + circle2(3);
    intersect = distance < radius_sum;
end
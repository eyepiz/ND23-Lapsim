density = 1.225; % Base value for air density in normal conditions.
cd = 0.56; % Base value for drag coefficient without aerodynamics for SAE
           % car.
function drag = find_drag(velocity, area)
    drag = cd * (density * velocity * velocity)/2 * area;
end


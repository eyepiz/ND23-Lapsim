classdef aero
    properties
        area
        density % Base value for air density in normal conditions.
        cd % Base value for drag coefficient without aerodynamics for SAE
           % car.
    end
    methods
        function obj = aero(ar)
            obj.area = ar;
            obj.density = 1.225;
            obj.cd = 0.56;
        end
        
        function drag = find_drag()
            velocity = 10;
            drag = obj.cd * (obj.density * velocity * velocity)/2 * obj.area;
        end
    end
end
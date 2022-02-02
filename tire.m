classdef tire
    properties
        camber
        pressure
        circumference
        front_load
        rear_load
    end
    methods
        function obj = tire(c, p, circum, fl, rl)
            obj.camber = c;
            obj.pressure = p;
            obj.circumference = circum;
            obj.front_load = fl;
            obj.rear_load = rl;
        end
    end
end
classdef car
    properties
        mass
        wheel_base
        rear_weight_dist
        front_weight_dist
        wheel_radius
        center_gravity
        front_width
        rear_width
        tire
    end
    methods
        function obj = car(m, wb, rwd, wr, cg, fwid, rwid, t)
            obj.mass = m;
            obj.wheel_base = wb;
            obj.rear_weight_dist = rwd;
            obj.front_weight_dist = 1 - rwd;
            obj.wheel_radius = wr;
            obj.center_gravity = cg;
            obj.front_width = fwid;
            obj.rear_width = rwid;
            obj.tire = t;
        end
    end
end
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
        aerodynamics
        engine
    end
    methods(Static)
        function obj = car(m, wb, rwd, wr, cg, fwid, rwid, t, a, eng)
            obj.mass = m;
            obj.wheel_base = wb;
            obj.rear_weight_dist = rwd;
            obj.front_weight_dist = 1 - rwd;
            obj.wheel_radius = wr;
            obj.center_gravity = cg;
            obj.front_width = fwid;
            obj.rear_width = rwid;
            obj.tire = t;
            obj.aerodynamics = a;
            obj.engine = eng;
        end
        
        function straight_acceleration_s = str_acc_s(velocity, e,...
                c)
            if velocity > 0
                straight_acceleration_s = 550*(22/velocity)*(e.hp/c.mass);
            else
                straight_acceleration_s = 550*(e.hp/c.mass);
            end
        end
        
        function straight_acceleration_f = str_acc_f(mass, velocity, a)
            drag = a.find_drag(a, velocity);
            straight_acceleration_f = (tractive_force - rolling_resistance...
                - drag - hitch - mass*Sin(angle))/mass;
        end
        
        function angle = turn_angle(c, radius)
            angle = c.wheel_base/radius * 180/pi;
        end
        
        function turn_velocity = find_turn_velocity(c, steering_angle,...
                turn_radius)
            turn_velocity = sqrt((steering_angle-57.3*c.wheel_base...
                /turn_radius)*9.8*turn_radius);
        end
        
        function cornering_stiffness = calc_stiffness(velocity, c, radius)
            
        end
        
        function Fy = lateral_force(c, velocity, radius)
            Fy = (c.mass*velocity*velocity)/radius;
        end
    end
end
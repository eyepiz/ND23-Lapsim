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
        brakes
        tire
        aerodynamics
        engine
    end
    methods(Static)
        function obj = car(m, wb, rwd, wr, cg, fwid, rwid, t, a, eng, b)
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
            obj.brakes = b;
        end
        
        function straight_acceleration_s = str_acc_s(velocity, e,...
                c, a)
            if velocity > 0
                straight_acceleration_s = c.str_acc_f(c, velocity, e, a);
            else
                straight_acceleration_s = 550*(e.hp/c.mass);
            end
        end
        
        function straight_acceleration_f = str_acc_f(c, velocity, e, a)
            drag = a.find_drag(a, velocity);
            straight_acceleration_f = ((550*22/velocity*e.hp) - drag)...
                /c.mass;
        end
        
        function angle = turn_angle(c, radius)
            angle = c.wheel_base/radius * 180/pi;
        end
        
        function turn_velocity = find_turn_velocity(c, angle,...
                radius, t)
            stiffness = c.calc_stiffness(c);
            turn_velocity = sqrt((32.2*radius*(angle-57.3*c.wheel_base...
        *(1/radius)))/((t.front_load*c.mass/stiffness - t.rear_load*c.mass/stiffness)));
        end
        
        function cornering_stiffness = calc_stiffness(c)
            cornering_stiffness = c.mass * 0.3 * 32.2 * 4.448;
        end
        
        function deceleration = braking(c, a, velocity)
            total_force = c.decel_forces(c.t, a, velocity);
            deceleration = total_force/c.mass;
        end
        
        function decel_force = decel_forces(t, a, velocity)
            drag = a.find_drag(velocity);
            brakes = brake_force(t);
            decel_force = drag + brakes;
        end
        
        function Fy = lateral_force(c, velocity, radius)
            Fy = (c.mass*velocity*velocity)/radius;
        end
        
        function max_traction = find_max_traction()
            
        end
    end
end
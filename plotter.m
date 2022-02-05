classdef plotter
    methods(Static)
        function plot_scores(s)
            x = categorical({'Acceleration','Skidpad','Autocross','Endurance','Total'});
            our_scores = [s.acceleration_score, s.skidpad_score, s.autocross_score, ...
                s.endurance_score, s.total_score];
            max_scores = [100, 75, 125, 275, 575];
            figure
            combo = [our_scores; max_scores];
            bar(x, combo);
            legend('Location','bestoutside')
            legend("Expected Score", "Maximum Score");
            xlabel("Event Number");
            ylabel("Score");
            title 'Expected Score vs Maximum Score'
        end
        
        function plot_velocity(v1, v2, v3)
            x1 = 1:1:length(v1);
            x2 = 1:1:length(v2);
            x3 = 1:1:length(v3);
            figure
            plot(x1, v1, "b", x2, v2, "r", x3, v3, "g");
            xticks([0 1000 2000 3000 4000 5000])
            xticklabels({'0','1','2', '3', '4', '5'})
            legend('Location','bestoutside')
            legend("400 lbs", "500 lbs", "600 lbs");
            xlabel("Time (seconds)");
            ylabel("Velocity (feet per second)");
            grid on
            title 'Affect of Weight on Acceleration Performance'
        end
        
        function velocity_comparision(e1, c1, a1, e2, c2, a2, e3, c3, a3)
            velocity1 = 0;
            velocity2 = 0;
            velocity3 = 0;
            time = 1;
            velocity_ar1 = [];
            velocity_ar2 = [];
            velocity_ar3 = [];
            acceleration1 = c1.str_acc_s(velocity1, e1, c1, a1);
            acceleration2 = c2.str_acc_s(velocity1, e2, c2, a2);
            acceleration3 = c3.str_acc_s(velocity3, e3, c3, a3);

            while (acceleration1 > 1 && acceleration2 > 1 && acceleration3 > 1 && time < 25)
                %fprintf("%f\n", acceleration);
                velocity1 = velocity1 + acceleration1;
                velocity_ar1(end+1) = velocity1;
                velocity2 = velocity2 + acceleration2;
                velocity_ar2(end+1) = velocity2;
                velocity3 = velocity3 + acceleration3;
                velocity_ar3(end+1) = velocity3;
                time = time + 1;
                acceleration1 = c1.str_acc_s(velocity1, e1, c1, a1);
                acceleration2 = c2.str_acc_s(velocity1, e2, c2, a2);
                acceleration3 = c3.str_acc_s(velocity3, e3, c3, a3);
            end
            fprintf("%f\n", velocity_ar1(time-1));
            x = 1:1:time-1;
            figure
            plot(x, velocity_ar1, "g", x, velocity_ar2, "b", x, velocity_ar3, "r");
            % Update this everytime you want to graph something
            legend('Location','bestoutside')
            legend("22 HP", "25 HP", "28 HP");
            xlabel("Time (seconds)");
            ylabel("Velocity (feet per second)");
            grid on
            title 'Affect of Horse Power on Acceleration'
        end
    end
end
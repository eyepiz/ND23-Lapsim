function plot_scores(s)
x = 1:1:5;
our_scores = [s.acceleration_score, s.skidpad_score, s.autocross_score, ...
        s.endurance_score, s.total_score];
max_scores = [100, 75, 125, 275, 575];
figure
plot(x, our_scores, x, max_scores, "--");
end
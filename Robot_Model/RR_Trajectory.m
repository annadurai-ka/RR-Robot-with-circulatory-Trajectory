clc;
close;
clear;

sim('Task_Space_Centralized_Control_Feedback_Linearization.slx');

a1 = 0.3;  
a2 = 0.3;

xp1 = a1 * cos(q1(:,2));
yp1 = a1 * sin(q1(:,2));

figure(1);
plot(xd(:,2), yd(:,2), 'b^', 'LineWidth', 2); % Black color for desired trajectory
hold on;
plot(x1(:,2), y1(:,2), 'k-o', 'LineWidth', 2); % Blue color for direct control in task space
plot(x1(:,2), y1(:,2), 'ms', 'LineWidth', 2); % Magenta color for inverse kinematics and control in joint space
xlabel('x');
ylabel('y');
title('Trajectory Tracking');
legend('Desired Trajectory', 'Direct Control in Task Space', 'Inverse Kinematics and Control in Joint Space', 'Location', 'best');

figure(2);
plot(0, 0, 'ko', 'MarkerFaceColor', 'k', 'LineWidth', 2); % Black color for origin
hold on;
h1 = line([0 xp1(1)], [0 yp1(1)], 'color', [0.5, 0, 0.5], 'LineWidth', 2); % Purple color for trajectory line
h2 = line([xp1(1) x1(1,2)], [yp1(1) y1(1,2)], 'color', [0, 0.7, 0], 'LineWidth', 2); % Green color for link
h3 = plot(xp1(1), yp1(1), 'co', 'MarkerFaceColor', 'c', 'LineWidth', 2); % Cyan color for end effector position
h4 = plot(x1(1,2), y1(1,2), 'ro', 'MarkerFaceColor', 'r', 'LineWidth', 2); % Red color for joint position
plot(xd(:,2), yd(:,2), 'm', 'LineWidth', 2); % Blue color for desired trajectory
axis([-0.05 0.5 -0.2 0.4]);
axis equal;
xlabel('x');
ylabel('y');
title('Trajectory Following');

for ii = 2:length(xp1)
    set(h1, 'XData', [0 xp1(ii)]);
    set(h1, 'YData', [0 yp1(ii)]);
    set(h2, 'XData', [xp1(ii) x1(ii,2)]);
    set(h2, 'YData', [yp1(ii) y1(ii,2)]);
    set(h3, 'XData', xp1(ii));
    set(h3, 'YData', yp1(ii));   
    set(h4, 'XData', x1(ii,2));
    set(h4, 'YData', y1(ii,2));    
    drawnow;
end

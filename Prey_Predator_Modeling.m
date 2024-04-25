clc
close all

%% Prey-Predator Modeling using the Lotka-Volterra model

% Lotka-Volterra model equations:
%       d(prey)/dt     = alpha*prey          - beta*prey*predator
%       d(predator)/dt = gamma*prey*predator - delta*predator


%% Set the parameter values
alpha = 1.5;  % Prey growth rate
beta = 0.1;   % Predation rate
gamma = 0.1;  % Predator growth rate
delta = 0.7;  % Predator death rate

%% Set the initial population sizes
prey0 = 15;    % Initial prey population
predator0 = 10; % Initial predator population

%% Set the simulation time
simulation_time = 30; % Total simulation time

%% Define the Lotka-Volterra equations
ode_equations = @(t, y) [alpha*y(1) - beta*y(1)*y(2); gamma*y(1)*y(2) - delta*y(2)];

%% Solve the equations using ode45
[t, populations] = ode45(ode_equations, [0 simulation_time], [prey0 predator0]);

prey_population = populations(:, 1);
predator_population = populations(:, 2);

%% Plot the population dynamics
subplot(1, 2, 1);
plot(t, prey_population, 'b', t, predator_population, 'r');
xlabel('Time');
ylabel('Population');
title('Prey-Predator Model (Lotka-Volterra)');
legend('Prey', 'Predator');
grid on;

subplot(1, 2, 2);
plot(prey_population, predator_population);
xlabel('Prey Population');
ylabel('Predator Population');
title('Prey vs. Predator');
grid on;
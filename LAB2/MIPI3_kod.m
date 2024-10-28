% Parametry
mikro = 2; 
przedzial_czasowy = [0 200]; 

war_poczatkowe = [3; 2]; 

rownanie = @(t, X) [X(2); mu * (1 - X(1)^2) * X(2) - X(1)];

[t, X] = ode45(rownanie, przedzial_czasowy, war_poczatkowe);


figure;
plot(t, X(:,1), 'b', 'DisplayName', 'x(t)');
hold on;

plot(t, X(:,2), 'r', 'DisplayName', 'dx/dt(t)');
xlabel('Czas');
ylabel('Wartość');
legend;
title('Oscylator Van der Pola');
grid on;

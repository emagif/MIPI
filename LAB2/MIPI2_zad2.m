% Parametry
num_steps = 30;       % Liczba lat
r_values = 0:1:4;   % Zakres wartości parametru r (od 0 do 4 z krokiem 0.1)
X0 = 0.1;             % Początkowa liczebność populacji (można zmieniać w zakresie 0 do 1)

% Przygotowanie zmiennej do przechowywania wyników
time = 0:num_steps;   % Wektor czasu (0 do 30 lat)
populations = zeros(length(r_values), num_steps + 1);  % Macierz do przechowywania wyników

% Symulacja dla różnych wartości r
for j = 1:length(r_values)
    r = r_values(j);  % Wartość parametru r
    X = zeros(1, num_steps + 1);  % Wektor liczebności populacji
    X(1) = X0;  % Ustawienie warunku początkowego
    
    % Symulacja liczebności populacji dla kolejnych lat
    for k = 1:num_steps
        X(k + 1) = r * X(k) * (1 - X(k));  % Równanie różnicowe (2)
    end
    
    % Zapis wyników dla bieżącej wartości r
    populations(j, :) = X;
end

% Rysowanie wykresów dla różnych wartości r
figure;
hold on;
for j = 1:length(r_values)
    plot(time, populations(j, :), 'DisplayName', ['r = ' num2str(r_values(j))]);
end
hold off;

% Dodanie opisów i legendy
xlabel('Czas (lata)');
ylabel('Liczebność populacji');
title('Symulacja liczebności populacji dorsza dla różnych wartości parametru r');
legend show;

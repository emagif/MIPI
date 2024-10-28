% Parametry
r = 0.1;     % szybkość wzrostu (możesz zmieniać)
T = 1;       % krok czasu (możesz zmieniać)
N0 = 10;     % początkowa liczebność (możesz zmieniać)

% Ustawienia symulacji
num_steps = 50;     % liczba kroków symulacji
time = 0:num_steps; % wektor czasu

% Inicjalizacja wektora liczebności
N = zeros(1, num_steps+1);
N(1) = N0;

% Obliczenia dla równania różnicowego
for k = 1:num_steps
    N(k+1) = N(k) + r * N(k) * T;
end

% Wykres liczebności populacji
figure;
plot(time, N, 'b-', 'LineWidth', 2);
xlabel('Czas (k)');
ylabel('Liczebność populacji (N)');
title(['Wzrost populacji mikroorganizmów przy r = ', num2str(r), ', T = ', num2str(T), ', N0 = ', num2str(N0)]);
grid on;

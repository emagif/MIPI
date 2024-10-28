% Początkowa liczebność populacji mikrooganizmów w chwili t0
N_0 = 1;

% szybkość wzrostu/obumierania mikroorganizmów populacji
r = 0.3;

% parametr związany z krokiem czasu 
T = 0.002;

liczba_krokow = 5000;

czas_symulacji = 0:liczba_krokow;

N = zeros(1, liczba_krokow+1);
N(1)=N_0;

for n = 1:liczba_krokow
    N(n+1) = N(n) + r*N(n)*T;
end


figure;
plot(czas_symulacji, N, 'r-', 'LineWidth',3);
xlabel("Czas(n)");
ylabel("Liczebność populacji (N)");
title(["Wzrotst populacji w zaleznosci od parametrów"]);
grid on;
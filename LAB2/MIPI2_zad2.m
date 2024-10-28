% lata
liczba_krokow = 30;

% zakres r
wartosci_r = 0:1:4;

% war początkowy X(k0)
X0 = 0.4;

% 0 - 30 lat
czas = 0:liczba_krokow;   

% macierz do wyników
populacja = zeros(length(wartosci_r), liczba_krokow+1);

% Różne r
for j = 1:length(wartosci_r)
    r = wartosci_r(j); % przypisanie r
    X = zeros(1, liczba_krokow + 1);  
    X(1) = X0; 
    
    
    for k = 1:liczba_krokow
        % równanie
        X(k + 1) = r * X(k) * (1 - X(k));
    end
    
    populacja(j, :) = X;
end

% Wykresy
figure;
hold on;
for j = 1:length(wartosci_r)
    plot(czas, populacja(j, :), 'DisplayName', ['r = ' num2str(wartosci_r(j))]);
end
hold off;

% Legenda & opis
xlabel('Czas (lata)');
ylabel('Liczebność populacji');
title('Symulacja liczebności populacji dorsza dla różnych wartości parametru r');
legend show;

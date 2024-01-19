//zadanie 1a//
sin_0_1 = sin(0.1);
cos_0_1 = cos(0.1);
tg_0_1 = tan(0.1);
ctg_0_1 = 1 / tg_0_1;

sum_value = sin_0_1 + cos_0_1 + tg_0_1 + ctg_0_1;
disp(sum_value);
//zadanie 1b//
A = [1, -2, 3, 0; 3, 3, 0, 6; 1, -2, 5, 8; 6, 3, -1, 0];
B = [2, 6, -2, 0; 3, 4, 0, 6; 1, -2, 6, 8; 8, -1, 2, 0];

sum_matrix = A + B;
disp(sum_matrix);
//zadanie 1c//
// Zakres dla zmiennej x
x = linspace(-10, 10, 400);

// Poprawiona definicja funkcji f1
f1_corrected = 2.^(x + 4);

// Definicja funkcji f2
f2 = (x.^3 + 4.*x) ./ (x.^2 + 5);

// Tworzenie wykresu
plot(x, f1_corrected);
plot(x, f2);
xlabel('x');
ylabel('f(x)');
title('Wykresy funkcji f1 i f2');
legend(['f1 = 2^(x + 4)', 'f2 = (x^3 + 4x) / (x^2 + 5)']);
xgrid;
//zadanie 1d//
// Funkcja do obliczenia silni
function f = factorial(n)
    if n == 0 then
        f = 1;
    else
        f = n * factorial(n - 1);
    end
endfunction

// Inicjalizacja sumy
sum_sequence = 0;

// Obliczanie sumy ciągu
for i = 7:32
    sum_sequence = sum_sequence + factorial(i) - 2/(5^i) + i;
end

disp(sum_sequence);
//zadanie2//
// Zaktualizowany zakres dla zmiennej x dla dziedziny [-1, 6]
x = linspace(-1, 6, 400);

// Obliczenie wartości funkcji
f1 = 2.^(x + 4);
f2 = (x.^3 + 4.*x) ./ (x.^2 + 5);

// Tworzenie wykresu
plot(x, f1, 'r'); // f1 w kolorze czerwonym
plot(x, f2, 'b'); // f2 w kolorze niebieskim
xlabel('x');
ylabel('f(x)');
title('Wykresy funkcji f1 i f2 na przedziale [−1, 6]');
legend(['f1 = 2^(x + 4)', 'f2 = (x^3 + 4x) / (x^2 + 5)']);
xgrid;
//zadanie 3//
// Dane dla wykresu
years = ["2010", "2012", "2014", "2016", "2018"];
rmf_values = [33, 23, 43, 23, 44];
zet_values = [27, 12, 62, 12, 75];

// Ustawienia dla wykresu
bar_width = 0.35;  // Szerokość słupków
index = 0:(length(years) - 1);  // Indeksy dla lat

// Tworzenie wykresu
clf();
bar(index, rmf_values, bar_width, "blue");
bar(index + bar_width, zet_values, bar_width, "red");

xlabel("Rok");
ylabel("Wartości");
title("Wykres słupkowy pogrupowany dla RMF i Zet");
xgrid;
xstring(index + bar_width / 2, -5, years);
legend(["RMF", "Zet"]);

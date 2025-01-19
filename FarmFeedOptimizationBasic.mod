# Dane
param cost1 := 300;
param cost2 := 250;
param protein1 := 60;
param protein2 := 50;
param minerals1 := 24;
param minerals2 := 60;
param vitamins1 := 0;
param vitamins2 := 10;
param energy1 := 400;
param energy2 := 200;
param max_budget := 1200;
param min_protein := 150;
param min_minerals := 120;
param min_vitamins := 10;

# Zmienne decyzyjne
var x1 >= 0; # ilość K1
var x2 >= 0; # ilość K2

# Ograniczenia
s.t. Budget:
    cost1 * x1 + cost2 * x2 <= max_budget;

s.t. Protein:
    protein1 * x1 + protein2 * x2 >= min_protein;

s.t. Minerals:
    minerals1 * x1 + minerals2 * x2 >= min_minerals;

s.t. Vitamins:
    vitamins1 * x1 + vitamins2 * x2 >= min_vitamins;

# Funkcje celu
maximize Energy:
    energy1 * x1 + energy2 * x2;
    
maximize Savings:
    max_budget - (cost1 * x1 + cost2 * x2);
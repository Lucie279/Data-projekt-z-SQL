# Data-projekt-z-SQL

**Lucie Mendlíková (Datová Akademie 5.11.2025)**

## Popis projektu
Tento projekt se zaměřuje na analýzu vývoje mezd a cen vybraných potravin v České republice pomocí SQL. Součástí projektu je vytvoření dvou hlavních tabulek – jedné pro data o mzdách a cenách potravin v ČR a druhé s doplňujícími informacemi o HDP, GINI koeficientu a populaci dalších evropských států. Pomocí SQL dotazů jsou vytvořeny hlavní a pomocná tabulka, a zodpovězeny předem definované výzkumné otázky.

## Otázka 1: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?
Mzdy ve sledovaném období nerostly ve všech odvětvích kontinuálně. U většiny odvětví sice převažuje dlouhodobý růst průměrné mzdy, nicméně v jednotlivých letech se vyskytují i meziroční poklesy, takže růst není kontinuální.

## Otázka 2: Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?
V prvním srovnatelném roce 2006 bylo možné za průměrnou mzdu koupit přibližně 1 167 kg chleba a 1 303 litrů mléka, zatímco v posledním sledovaném roce 2018 to bylo zhruba 1 252 kg chleba a 1 531 litrů mléka. Kupní síla průměrné mzdy se tak u obou sledovaných potravin v průběhu období zvýšila.

## Otázka 3: Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší percentuální meziroční nárůst)?
U jednotlivých potravin byl vypočten průměrný meziroční procentuální nárůst cen, přičemž byly zohledněny pouze kladné změny, tedy skutečné zdražování. Nejnižší průměrný nárůst cen byl zaznamenán u jakostního bílého vína, které tak zdražovalo nejpomaleji.

## Otázka 4: Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?
Na základě meziročního porovnání růstu cen potravin a mezd nebyl v analyzovaném období identifikován žádný rok, ve kterém by růst cen potravin převýšil růst mezd o více než 10 %. Výrazně vyšší tempo zdražování potravin oproti mzdám se tedy v datech nevyskytlo.

## Otázka 5: Má výška HDP vliv na změny ve mzdách a cenách potravin? Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo následujícím roce výraznějším růstem?
Z porovnání meziročního růstu HDP, mezd a cen potravin nevyplývá jednoznačná přímá závislost. V některých letech se sice vyšší růst HDP projevil současně i růstem mezd nebo cen, ale v jiných letech tento vztah patrný nebyl. Vývoj mezd a cen potravin je tedy ovlivněn i dalšími faktory, nikoli pouze výší HDP.

## Chybějící hodnoty
První rok v každém ukazateli neobsahuje meziroční změnu, protože neexistuje předchozí hodnota, se kterou by bylo možné tuto změnu vypočítat. Proto se zde vyskytují chybějící hodnoty (NULL).

U některých států a let nejsou k dispozici úplná ekonomická data, což se projevuje chybějícími hodnotami u HDP a/nebo GINI koeficientu. Neúplnost dat vychází z původního datového zdroje. V některých případech chybí oba ukazatele (např. Gibraltar), zatímco jinde je dostupné pouze HDP nebo pouze GINI koeficient. Tyto záznamy byly v tabulce ponechány, avšak při analytických výstupech jsou zohledňovány pouze dostupné hodnoty.

## Odevzdané soubory
pripravaTAB.sql – vytvoření dvou hlavních tabulek a pomocné tabulky spolecne_roky  
Otazka1-5.sql – SQL dotazy pro zodpovězení výzkumných otázek 1–5  
t_lucie_mendlikova_project_sql_primary_final.csv – primární tabulka  
t_lucie_mendlikova_project_sql_secondary_final.csv – sekundární tabulka  
spolecne_roky.csv – pomocná tabulka - obsahuje roky, ve kterých jsou dostupná data jak o mzdách, tak o cenách potravin, a slouží jako časový filtr pro zajištění srovnatelnosti dat

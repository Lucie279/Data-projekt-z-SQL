-- OTÁZKA 1: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

WITH mzdy AS (
    SELECT 
        odvetvi,
        rok,
        AVG(prumerna_mzda) AS prumerna_mzda
    FROM t_lucie_mendlikova_project_sql_primary_final
    GROUP BY odvetvi, rok
),

zmeny AS (
    SELECT
        odvetvi,
        rok,
        prumerna_mzda,
        prumerna_mzda
            - LAG(prumerna_mzda) OVER (PARTITION BY odvetvi ORDER BY rok)
            AS mezirocni_zmena
    FROM mzdy
)

SELECT
    odvetvi,
    rok,
    ROUND(prumerna_mzda, 0) AS prumerna_mzda,

    ROUND(mezirocni_zmena, 0) AS mezirocni_zmena,

    -- ANO / NE / -  (zda došlo ke změně, pomlčka u roku 2006, kdy nemáme srovnání)
    CASE
        WHEN mezirocni_zmena IS NULL THEN '-'
        WHEN mezirocni_zmena <> 0 THEN 'ANO'
        ELSE 'NE'
    END AS zmena,

    -- Typ změny
    CASE
        WHEN mezirocni_zmena > 0 THEN 'RŮST'
        WHEN mezirocni_zmena < 0 THEN 'POKLES'
        ELSE '-'
    END AS typ_zmeny

FROM zmeny
ORDER BY odvetvi, rok;

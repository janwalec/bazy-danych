
--Podaj 3 państwa o największej łącznej długości pasm górskich, które się w nim znajdują.
SELECT TOP 3
    pasma_panstwa.nazwa_panstwa,
    SUM(pasma_gorskie.dlugosc_pasma) AS suma_dlugosci
FROM
    pasma_panstwa
JOIN 
    pasma_gorskie ON pasma_panstwa.nazwa_pasma = pasma_gorskie.nazwa_pasma
GROUP BY
    pasma_panstwa.nazwa_panstwa, pasma_panstwa.nazwa_pasma
ORDER BY
    suma_dlugosci DESC;


--Stwórz zestawienie państw o najwyższym PKB na każdym kontynencie
WITH NumerowanePKB AS (
    SELECT
        kontynenty_panstwa.nazwa_panstwa,
        (SELECT nazwa_kontynentu FROM kontynenty_id WHERE kontynenty_id.id = kontynenty_panstwa.ID_KONTYNENTU) AS nazwa_kontynentu,
        panstwa.PKB,
        ROW_NUMBER() OVER (PARTITION BY kontynenty_panstwa.ID_KONTYNENTU ORDER BY panstwa.PKB DESC) AS Numer
        --stworzenie unikalnej kolumny numerowanych wierszy, która resetuje się przy nowym kontynencie (partition by)
    FROM
        kontynenty_panstwa
    JOIN
        panstwa ON kontynenty_panstwa.nazwa_panstwa = panstwa.nazwa_panstwa
)
SELECT
    nazwa_panstwa,
    nazwa_kontynentu,
    PKB
FROM
    NumerowanePKB
WHERE
    Numer = 1;

--Chcesz podbić najwyższą górę w danym kraju. Znajdź najwyższy szczyt górski w danym państwie.
WITH NumerowaneSzczyty AS (
    SELECT 
        pasma_panstwa.nazwa_panstwa,
        pasma_panstwa.nazwa_pasma,
        szczyty_gorskie.nazwa_szczytu,
        szczyty_gorskie.wysokosc,
        ROW_NUMBER() OVER (PARTITION BY pasma_panstwa.nazwa_panstwa ORDER BY szczyty_gorskie.wysokosc DESC) AS Numer
    FROM
        pasma_panstwa
    JOIN
        pasma_gorskie ON pasma_panstwa.nazwa_pasma = pasma_gorskie.nazwa_pasma
    JOIN
        szczyty_gorskie ON pasma_gorskie.nazwa_pasma = szczyty_gorskie.lezy_na
    WHERE
        szczyty_gorskie.lezy_na = pasma_gorskie.nazwa_pasma
)
SELECT
    nazwa_panstwa,
    nazwa_pasma,
    nazwa_szczytu,
    wysokosc
FROM
    NumerowaneSzczyty
WHERE
    Numer = 1;


--Chcesz wybrać się do państwa, które ma największą ilość miast i równocześnie dostęp do morza.
SELECT TOP 1
    panstwa_morza.nazwa_panstwa,
    COUNT(DISTINCT miasta.nazwa_miasta) AS liczba_miast --bez DISTINCT liczy podwojnie
FROM
    panstwa_morza
JOIN
    miasta ON panstwa_morza.nazwa_panstwa = miasta.nalezy_do
GROUP BY
    panstwa_morza.nazwa_panstwa
ORDER BY liczba_miast DESC;

-- Wybierasz się na ryby i chcesz zapewnić sobie możliwość złowienia różnorodnych gatunków ryb. Znajdź morze, które ma dostęp do oceanu i wpada do niego największa ilość rzek.

SELECT TOP 1
    rzeki.wpada_do_morza,
    morza.laczy_sie_z AS morze_laczy_sie_z,
    COUNT(rzeki.nazwa_rzeki) AS liczba_rzek
FROM
    rzeki
JOIN
    morza ON rzeki.wpada_do_morza = morza.nazwa_morza
WHERE
    rzeki.wpada_do_morza IS NOT NULL
GROUP BY
    rzeki.wpada_do_morza, morza.laczy_sie_z
ORDER BY
    morze_laczy_sie_z, liczba_rzek DESC;

--AUTORSKIE!!!
--wypisz najbogatsze panstwo lezace nad oceanem majacym najwiecej panstw
WITH OceanStats AS (
    SELECT 
        panstwa_oceany.nazwa_oceanu,
        panstwa_oceany.nazwa_panstwa,
        panstwa.PKB,
        ROW_NUMBER() OVER (PARTITION BY panstwa_oceany.nazwa_oceanu ORDER BY panstwa.PKB DESC) AS Numer
    FROM
        panstwa_oceany
    JOIN
        panstwa ON panstwa_oceany.nazwa_panstwa = panstwa.nazwa_panstwa
)
SELECT 
    nazwa_oceanu,
    nazwa_panstwa,
    PKB
FROM
    OceanStats
WHERE
    Numer = 1
ORDER BY
    PKB DESC;

--wypisz panstwo z największą licz. ludnosci
SELECT
     (SELECT nazwa_kontynentu FROM kontynenty_id WHERE kontynenty_id.id = kontynenty_panstwa.ID_KONTYNENTU) AS nazwa_kontynentu,
    kontynenty_panstwa.nazwa_panstwa,
    MAX(panstwa.liczba_ludnosci) as maksymalna_liczba_ludnosci
FROM
    kontynenty_panstwa
JOIN
    panstwa ON kontynenty_panstwa.nazwa_panstwa = panstwa.nazwa_panstwa
GROUP BY
    panstwa.liczba_ludnosci, kontynenty_panstwa.nazwa_panstwa, kontynenty_panstwa.ID_KONTYNENTU
ORDER BY 
    panstwa.liczba_ludnosci DESC;

--zapytanie z create view, utworz tabele mórz które mają polaczenie z oceanem

SELECT
    SUM(morza_z_oceanami.powierzchnia_morza) AS laczna_powierzchnia_morz
FROM 
    morza_z_oceanami;
DROP VIEW IF EXISTS morza_z_oceanami;
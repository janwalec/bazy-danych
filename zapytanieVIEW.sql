CREATE VIEW morza_z_oceanami AS
SELECT
    morza.nazwa_morza,
    morza.powierzchnia AS powierzchnia_morza,
    morza.laczy_sie_z,
    oceany.powierzchnia AS powierzchnia_oceanu
FROM 
    morza
JOIN
    oceany ON morza.laczy_sie_z = oceany.nazwa_oceanu
WHERE
    morza.laczy_sie_z IS NOT NULL;

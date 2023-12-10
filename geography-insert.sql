INSERT INTO kontynenty
    (nazwa_kontynentu, powierzchnia, liczba_ludnosci, liczba_panstw)
VALUES
    ('Europa', 10180000, 747000000, 50),
    ('Azja', 44580000, 4600000000, 49),
    ('Ameryka północna', 24710000, 579000000, 3),
    ('Ameryka południowa', 17840000, 430000000, 12),
    ('Australia i Oceania', 8500000, 41000000, 14),
    ('Afryka', 30370000, 1370000000, 54),
    ('Antarktyda', 14000000, 1000, 0)

INSERT INTO oceany
    (nazwa_oceanu, powierzchnia)
VALUES
    ('Ocean spokojny', 165200000),
    ('Ocean atlantycki', 106500000),
    ('Ocean indyjski', 70560000),
    ('Ocean antarktyczny', 20300000),
    ('Ocean arktyczny', 14060000)

INSERT INTO kontynenty_oceany
    (nazwa_kontynentu, nazwa_oceanu)
VALUES
    ('Azja', 'Ocean spokojny'),
    ('Ameryka południowa', 'Ocean spokojny'),
    ('Ameryka północna', 'Ocean spokojny'),
    ('Australia i Oceania', 'Ocean spokojny'),
   
    ('Ameryka południowa', 'Ocean atlantycki'),
    ('Europa', 'Ocean atlantycki'),
    ('Afryka', 'Ocean atlantycki'),
   
    ('Afryka', 'Ocean indyjski'),
    ('Azja', 'Ocean indyjski'),
    ('Australia i Oceania', 'Ocean indyjski'),
    ('Antarktyda', 'Ocean indyjski'),
   
    ('Antarktyda', 'Ocean antarktyczny'),
   
    ('Azja', 'Ocean arktyczny'),
    ('Europa', 'Ocean arktyczny'),
    ('Ameryka północna', 'Ocean arktyczny')
   
    
INSERT INTO morza
    (nazwa_morza, powierzchnia, czy_slodkie, laczy_sie_z)
VALUES
    ('Morze Bałtyckie', 377000, 0, 'Ocean atlantycki'),
    ('Morze Czarne', 436000, 0, NULL),
    ('Morze Czerwone', 438000, 0, 'Ocean indyjski'), --lezy przy afryce i azji (patrz kontynenty_morza)
    ('Zatoka Hudsona', 1230000, 1, 'Ocean arktyczny')

INSERT INTO panstwa
    (nazwa_panstwa, jest_wyspa, PKB, liczba_ludnosci)
VALUES
    ('USA', 0, 22675000000000, 331000000),
    ('Meksyk', 0, 1300000000000, 126000000),
    ('Australia', 0, 1400000000000, 25800000),
    ('RPA', 0, 314000000000, 60000000),
    ('Hiszpania', 0, 1400000000000, 47000000),
    ('Rosja', 0, 1500000000000, 145000000),
    ('Wielka Brytania', 1, 2900000000000, 67000000),
    ('Francja', 0, 2700000000000, 67000000),
    ('Niemcy', 0, 4400000000000, 83000000),
    ('Dania', 0, 355000000000, 5800000)

INSERT INTO kontynenty_panstwa
    (nazwa_panstwa, nazwa_kontynentu)
VALUES
    ('USA', 'Ameryka północna'),
    ('Meksyk', 'Ameryka południowa'),
    ('Australia', 'Australia i Oceania'),
    ('RPA', 'Afryka'),
    ('Hiszpania', 'Europa'),
    ('Rosja', 'Europa'),
    ('Rosja', 'Azja'),
    ('Wielka Brytania', 'Europa'),
    ('Francja', 'Europa'),
    ('Niemcy', 'Europa'),
    ('Dania', 'Europa')

INSERT INTO panstwa_sasiedzi
    (nazwa_panstwa1, nazwa_panstwa2)
VALUES
    ('Francja', 'Hiszpania'),
    ('Francja', 'Niemcy'),
    ('Francja', 'Dania'),
    ('Dania', 'Niemcy')

INSERT INTO miasta
    (nazwa_miasta, powierzchnia, liczba_ludnosci, stolica, nalezy_do)
VALUES
    ('Washington', 177, 714000, 1, 'USA'),
    ('Paryż', 105, 2150000, 1, 'Francja'),
    ('Sankt Petersburg', 1439, 5300000, 0, 'Rosja')

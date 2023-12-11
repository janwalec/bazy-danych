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
    ('Morze Hudsona', 1230000, 1, 'Ocean arktyczny'),
    ('Morze Śródziemne', 2500000 ,0, 'Ocean atlantycki'),
    ('Morze Północne', 750000, 0, 'Ocean atlantycki'),
    ('Morze Norweskie', 1400000 ,0, 'Ocean arktyczny'),
    ('Morze Irlandzkie', 425000 ,0, 'Ocean atlantycki'),
    ('Morze Karaibskie', 2750000 ,0, 'Ocean atlantycki'),
    ('Morze Arabskie', 3800000 ,0, 'Ocean indyjski'),
    ('Morze Andamańskie', 797000 ,0, 'Ocean indyjski'),
    ('Morze Japońskie', 1000000 ,0, 'Ocean spokojny'),
    ('Morze Wschodniochińskie', 1200000 ,0, 'Ocean spokojny'),
    ('Morze Filipińskie', 5000000 ,0, 'Ocean spokojny'),
    ('Morze Tasmana', 2300000 ,0, 'Ocean spokojny'),
    ('Morze Arafura', 500000 ,0, 'Ocean spokojny'),
    ('Morze Andamanskie', 800000 ,0, 'Ocean indyjski'),
    ('Morze Egejskie', 180000 ,0, 'Ocean atlantycki'),
    ('Morze Południowochińskie', 3500000 ,0, 'Ocean spokojny'),
    ('Morze Jońskie', 160000 ,0, 'Ocean atlantycki'),
    ('Morze Barentsa', 1400000 ,0, 'Ocean arktyczny')
   

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
    ('Belgia', 0, 355000000000, 5800000),
    ('Szwajcaria', 0, 703000000000, 8700000),
    ('Czechy', 0, 274000000000, 10700000),
    ('Kanada', 0, 1700000000000, 38100000),
    ('Kolumbia', 0, 309000000000, 51000000),
    ('Ekwador', 0, 111000000000, 17800000),
    ('Botswana', 0, 18000000000, 2400000),
    ('Zimbabwe', 0, 21000000000, 14900000),
    ('Chiny', 0, 17700000000000, 1410000000),
    ('Japonia', 1, 6000000000000, 113000000),
    ('Filipiny', 1, 376000000000, 113000000),
    ('Austria', 0, 472000000000, 8900000),
    ('Włochy', 0, 1900000000000, 60400000)

INSERT INTO kontynenty_panstwa
    (nazwa_panstwa, nazwa_kontynentu)
VALUES
    ('USA', 'Ameryka północna'),
    ('Meksyk', 'Ameryka północna'),
    ('Australia', 'Australia i Oceania'),
    ('RPA', 'Afryka'),
    ('Hiszpania', 'Europa'),
    ('Rosja', 'Europa'),
    ('Rosja', 'Azja'),
    ('Wielka Brytania', 'Europa'),
    ('Francja', 'Europa'),
    ('Niemcy', 'Europa'),
    ('Belgia', 'Europa'),
    ('Szwajcaria', 'Europa'),
    ('Czechy', 'Europa'),
    ('Kanada', 'Ameryka północna'),
    ('Kolumbia', 'Ameryka południowa'),
    ('Ekwador', 'Ameryka południowa'),
    ('Botswana', 'Afryka'),
    ('Zimbabwe', 'Afryka'),
    ('Chiny', 'Azja'),
    ('Japonia', 'Azja'),
    ('Filipiny', 'Australia i Oceania'),
    ('Austria', 'Europa'),
    ('Włochy', 'Europa')

INSERT INTO panstwa_sasiedzi
    (nazwa_panstwa1, nazwa_panstwa2)
VALUES
    ('Francja', 'Hiszpania'),
    ('Francja', 'Niemcy'),
    ('Francja', 'Belgia'),
    ('Belgia', 'Niemcy'),
    ('Szwajcaria', 'Francja'),
    ('Szwajcaria', 'Niemcy'),
    ('Czechy', 'Niemcy'),
    ('Włochy', 'Francja'),
    ('Włochy', 'Szwajcaria'),
    ('Włochy', 'Austria'),
    ('Austria', 'Czechy'),
    ('Austria', 'Niemcy'),
    ('Austria', 'Szwajcaria'),
    
    ('Kanada', 'USA'),
    ('Meksyk', 'USA'),
    ('Kolumbia', 'Ekwador'),
    
    ('RPA', 'Botswana'),
    ('RPA', 'Zimbabwe'),
    ('Botswana', 'Zimbabwe'),

    ('Rosja', 'Chiny')

INSERT INTO miasta
    (nazwa_miasta, powierzchnia, liczba_ludnosci, stolica, nalezy_do)
VALUES
    ('Washington', 177, 714000, 1, 'USA'),
    ('Paryż', 105, 2150000, 1, 'Francja'),
    ('Sankt Petersburg', 1439, 5300000, 0, 'Rosja'),
    ('Barcelona', 102, 1600000, 0, 'Hiszpania'),
    ('Rzym', 1285, 2800000, 1, 'Włochy'),
    ('Praga', 496, 1300000, 1, 'Czechy'),
    ('Hamburg', 755, 1800000, 0, 'Niemcy'),
    ('Bruksela', 33, 1200000, 1, 'Belgia'),
    ('Monachium', 310, 1200000, 0, 'Niemcy'),
    ('Lyon', 48, 1500000, 0, 'Francja'),
    ('Madryt', 604, 3400000, 1, 'Hiszpania'),
    ('Cali', 564, 2400000, 0, 'Kolumbia'),
    ('Bogota', 1587, 7400000, 1, 'Kolumbia'),
    ('Quito', 324, 2800000, 1, 'Ekwador'), 
    ('Ottawa', 2796, 1000000, 1, 'Kanada'),
    ('Dallas', 999, 1300000, 0, 'USA'),
    ('Pekin', 16800, 21500000, 1, 'Chiny'),
    ('Wuhan', 8494, 11000000, 0, 'Chiny'),
    ('Tokio', 3194, 14000000, 1, 'Japonia'), 
    ('Hiroszima', 907, 1100000, 0, 'Japonia')

INSERT INTO kontynenty_morza
    (nazwa_kontynentu, nazwa_morza)
VALUES
    ('Europa', 'Morze Bałtyckie'),
    ('Europa', 'Morze Czarne'),
    ('Europa', 'Morze Północne'),
    ('Europa', 'Morze Norweskie'),
    ('Europa', 'Morze Irlandzkie'),
    ('Europa', 'Morze Egejskie'),
    ('Europa', 'Morze Jońskie'),
    ('Europa', 'Morze Barentsa'),
    ('Europa', 'Morze Śródziemne'),
    ('Azja', 'Morze Czerwone'),
    ('Azja', 'Morze Wschodniochińskie'),
    ('Azja', 'Morze Filipińskie'),
    ('Azja', 'Morze Andamanskie'),
    ('Azja', 'Morze Południowochińskie'),
    ('Azja', 'Morze Śródziemne'),
    ('Ameryka północna', 'Morze Hudsona'),
    ('Ameryka północna', 'Morze Karaibskie'),
    ('Australia i Oceania', 'Morze Tasmana'),
    ('Australia i Oceania', 'Morze Arafura'),
    ('Afryka', 'Morze Śródziemne'),
    ('Afryka', 'Morze Czerwone')

INSERT INTO panstwa_oceany
    (nazwa_panstwa, nazwa_oceanu)
VALUES
    ('USA','Ocean spokojny'),
    ('Kanada','Ocean spokojny'),
    ('Kanada','Ocean arktyczny'),
    ('USA','Ocean atlantycki'),
    ('Kanada','Ocean atlantycki'),
    ('Meksyk','Ocean spokojny'),
    ('Australia','Ocean indyjski'),
    ('Australia','Ocean spokojny'),
    ('RPA','Ocean atlantycki'),
    ('RPA','Ocean indyjski'),
    ('Hiszpania','Ocean atlantycki'),
    ('Niemcy','Ocean atlantycki'),
    ('Francja','Ocean atlantycki'),
    ('Belgia','Ocean atlantycki'),
    ('Rosja','Ocean arktyczny'),
    ('Rosja','Ocean atlantycki'),
    ('Rosja','Ocean spokojny'),
    ('Ekwador','Ocean spokojny'),
    ('Kolumbia','Ocean spokojny'),
    ('Chiny','Ocean spokojny'),
    ('Japonia','Ocean spokojny'),
    ('Filipiny','Ocean spokojny')
    
    

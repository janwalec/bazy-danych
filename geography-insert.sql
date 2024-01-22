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
	
INSERT INTO kontynenty_id
	(nazwa_kontynentu, id)
VALUES
	('Europa', 1),
    ('Azja', 2),
    ('Ameryka północna', 3),
    ('Ameryka południowa', 4),
    ('Australia i Oceania', 5),
    ('Afryka', 6),
    ('Antarktyda', 7)

INSERT INTO oceany
    (nazwa_oceanu, powierzchnia)
VALUES
    ('Ocean spokojny', 165200000),
    ('Ocean atlantycki', 106500000),
    ('Ocean indyjski', 70560000),
    ('Ocean antarktyczny', 20300000),
    ('Ocean arktyczny', 14060000)

INSERT INTO kontynenty_oceany
    (ID_KONTYNENTU, nazwa_oceanu)
VALUES
    (2, 'Ocean spokojny'),
    (4, 'Ocean spokojny'),
    (3, 'Ocean spokojny'),
    (5, 'Ocean spokojny'),
   
    (4, 'Ocean atlantycki'),
    (1, 'Ocean atlantycki'),
    (6, 'Ocean atlantycki'),
   
    (6, 'Ocean indyjski'),
    (2, 'Ocean indyjski'),
    (5, 'Ocean indyjski'),
    (7, 'Ocean indyjski'),
   
    (7, 'Ocean antarktyczny'),
   
    (2, 'Ocean arktyczny'),
    (1, 'Ocean arktyczny'),
    (3, 'Ocean arktyczny')
   
    
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
    (nazwa_panstwa, ID_KONTYNENTU)
VALUES
    ('USA', 3),
    ('Meksyk', 3),
    ('Australia', 5),
    ('RPA', 6),
    ('Hiszpania', 1),
    ('Rosja', 1),
    ('Rosja', 2),
    ('Wielka Brytania', 1),
    ('Francja', 1),
    ('Niemcy', 1),
    ('Belgia', 1),
    ('Szwajcaria', 1),
    ('Czechy', 1),
    ('Kanada', 3),
    ('Kolumbia', 4),
    ('Ekwador', 4),
    ('Botswana', 6),
    ('Zimbabwe', 6),
    ('Chiny', 2),
    ('Japonia', 2),
    ('Filipiny', 5),
    ('Austria', 1),
    ('Włochy', 1)

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
    (ID_KONTYNENTU, nazwa_morza)
VALUES
    (1, 'Morze Bałtyckie'),
    (1, 'Morze Czarne'),
    (1, 'Morze Północne'),
    (1, 'Morze Norweskie'),
    (1, 'Morze Irlandzkie'),
    (1, 'Morze Egejskie'),
    (1, 'Morze Jońskie'),
    (1, 'Morze Barentsa'),
    (1, 'Morze Śródziemne'),
    (2, 'Morze Czerwone'),
    (2, 'Morze Wschodniochińskie'),
    (2, 'Morze Filipińskie'),
    (2, 'Morze Andamanskie'),
    (2, 'Morze Południowochińskie'),
    (2, 'Morze Śródziemne'),
    (3, 'Morze Hudsona'),
    (3, 'Morze Karaibskie'),
    (5, 'Morze Tasmana'),
    (5, 'Morze Arafura'),
    (6, 'Morze Śródziemne'),
    (6, 'Morze Czerwone')

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
    
INSERT INTO panstwa_morza
    (nazwa_panstwa, nazwa_morza)
VALUES
    ('USA','Morze Hudsona'),
    ('USA','Morze Karaibskie'),
    ('Meksyk','Morze Karaibskie'),
    ('Australia','Morze Tasmana'),
    ('Hiszpania','Morze Śródziemne'),
    ('Włochy','Morze Śródziemne'),
    ('Hiszpania','Morze Północne'),
    ('Francja','Morze Śródziemne'),
    ('Wielka Brytania','Morze Północne'),
    ('Francja','Morze Północne'),
    ('Niemcy','Morze Północne'),
    ('Niemcy','Morze Bałtyckie'),
    ('Belgia','Morze Północne'),
    ('Kanada','Morze Hudsona'),
    ('Kolumbia','Morze Karaibskie'),
    ('Ekwador','Morze Karaibskie'),
    ('Chiny','Morze Południowochińskie'),
    ('Filipiny','Morze Południowochińskie'),
    ('Japonia','Morze Japońskie'),
    ('Filipiny','Morze Filipińskie'),
    ('Japonia','Morze Filipińskie')

INSERT INTO pasma_gorskie
    (nazwa_pasma, dlugosc_pasma)
VALUES
    ('Góry Skaliste', 4800),
    ('Alpy Australijskie', 300),
    ('Pireneje', 450),
    ('Góry Ural', 2100),
    ('Grampiany', 100),
    ('Schwarzwald', 160),
    ('Alpy', 1200),
    ('Sudety', 300),
    ('Kordyliery', 8000),
    ('Andy', 9000),
    ('Góry Matopo', 100),
    ('Himalaje', 2500),
    ('Alpy Japońskie', 750)

INSERT INTO szczyty_gorskie
    (nazwa_szczytu, wysokosc, lezy_na)
VALUES
    ('Mount Elbert', 4401, 'Góry Skaliste'),
    ('Góra Kościuszki', 2228, 'Alpy Australijskie'),
    ('Pico de Aneto', 3404, 'Pireneje'),
    ('Narodnaja', 1895, 'Góry Ural'),
    ('Ben Nevis', 1345, 'Grampiany'),
    ('Feldberg', 1493, 'Schwarzwald'),
    ('Mont Blanc', 4808, 'Alpy'),
    ('Śnieżka', 1603, 'Sudety'),
    ('McKinley', 6190, 'Kordyliery'),
    ('Aconcagua', 6961, 'Andy'),
    ('Gulati', 1549, 'Góry Matopo'),
    ('Mount Everest', 8848, 'Himalaje'),
    ('Kita', 3193, 'Alpy Japońskie')


INSERT INTO pasma_panstwa
    (nazwa_pasma, nazwa_panstwa)
VALUES
    ('Góry Skaliste', 'USA'),
    ('Alpy Australijskie', 'Australia'),
    ('Pireneje', 'Hiszpania'),
    ('Pireneje', 'Francja'),
    ('Góry Ural', 'Rosja'),
    ('Grampiany', 'Wielka Brytania'),
    ('Schwarzwald', 'Niemcy'),
    ('Alpy', 'Francja'),
    ('Alpy', 'Włochy'),
    ('Alpy', 'Niemcy'),
    ('Alpy', 'Austria'),
    ('Sudety', 'Niemcy'),
    ('Sudety', 'Czechy'),
    ('Kordyliery', 'USA'),
    ('Kordyliery', 'Meksyk'),
    ('Kordyliery', 'Kanada'),
    ('Andy', 'Ekwador'),
    ('Andy', 'Kolumbia'),
    ('Góry Matopo', 'Zimbabwe'),
    ('Himalaje', 'Chiny'),
    ('Alpy Japońskie', 'Japonia')

INSERT INTO rzeki
    (nazwa_rzeki, dlugosc_rzeki, wpada_do_morza, wpada_do_oceanu)
VALUES
    ('Missisipi', 3730, 'Morze Karaibskie', NULL),
    ('Rio Grande', 3108, 'Morze Karaibskie', NULL),
    ('Murray', 2508, NULL, 'Ocean indyjski'),
    ('Limpopo', 1750, NULL, 'Ocean indyjski'),
    ('Tag', 1007, 'Morze Śródziemne', NULL),
    ('Wołga', 3692, NULL, NULL),
    ('Tamiza', 215, 'Morze Północne', NULL),
    ('Sekwana', 776, 'Morze Północne', NULL),
    ('Moza', 925, 'Morze Północne', NULL),
    ('Ren', 1233, 'Morze Północne', NULL),
    ('Wełtawa', 433, 'Morze Północne', NULL),
    ('Jukon', 3185, NULL, 'Ocean arktyczny'),
    ('Magdalena', 1528, 'Morze Karaibskie', NULL),
    ('Amazonka', 6400, NULL, 'Ocean atlantycki'),
    ('Okawango', 1600, NULL, NULL),
    ('Zambezi', 2574, NULL, 'Ocean indyjski'),
    ('Jangcy', 6300, 'Morze Wschodniochińskie', NULL),
    ('Shinano', 367, 'Morze Japońskie', NULL),
    ('Cagayan', 505, 'Morze Filipińskie', NULL),
    ('drugiarzeka', 505, 'Morze Filipińskie', NULL)

INSERT INTO rzeki_panstwa
    (nazwa_panstwa, nazwa_rzeki)
VALUES
    ('USA', 'Missisipi'),
    ('USA', 'Rio Grande'),
    ('Meksyk', 'Rio Grande'),
    ('Australia', 'Murray'),
    ('RPA', 'Limpopo'),
    ('Zimbabwe', 'Limpopo'),
    ('Hiszpania', 'Tag'),
    ('Rosja', 'Wołga'),
    ('Wielka Brytania', 'Tamiza'),
    ('Francja', 'Sekwana'),
    ('Francja', 'Ren'),
    ('Austria', 'Ren'),
    ('Francja', 'Moza'),
    ('Belgia', 'Moza'),
    ('Niemcy', 'Ren'),
    ('Szwajcaria', 'Ren'),
    ('Czechy', 'Wełtawa'),
    ('Kanada', 'Jukon'),
    ('Kolumbia', 'Magdalena'),
    ('Kolumbia', 'Amazonka'),
    ('Botswana', 'Okawango'),
    ('Botswana', 'Zambezi'),
    ('Chiny', 'Jangcy'),
    ('Japonia', 'Shinano'),
    ('Filipiny', 'Cagayan'),
    ('Filipiny', 'drugiarzeka')
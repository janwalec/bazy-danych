CREATE TABLE kontynenty (
    nazwa_kontynentu NVARCHAR (100) PRIMARY KEY,
    powierzchnia BIGINT NOT NULL,
    liczba_ludnosci BIGINT NOT NULL,
    liczba_panstw INT NOT NULL,
);

CREATE TABLE oceany (
    nazwa_oceanu NVARCHAR (100) PRIMARY KEY,
    powierzchnia BIGINT NOT NULL,
	--lezy_przy NVARCHAR (100) NOT NULL,
    --FOREIGN KEY (lezy_przy) REFERENCES kontynenty(nazwa_kontynentu)
);

CREATE TABLE morza (
    nazwa_morza NVARCHAR (100) PRIMARY KEY,
    powierzchnia BIGINT NOT NULL,
    czy_slodkie BIT NOT NULL,
    --lezy_przy NVARCHAR (100) NOT NULL,
	laczy_sie_z NVARCHAR (100),
    --FOREIGN KEY (lezy_przy) REFERENCES kontynenty(nazwa_kontynentu),
    FOREIGN KEY (laczy_sie_z) REFERENCES oceany(nazwa_oceanu)
);

CREATE TABLE panstwa (
    nazwa_panstwa NVARCHAR (100) PRIMARY KEY,
    jest_wyspa BIT NOT NULL,
    PKB BIGINT NOT NULL,
    liczba_ludnosci BIGINT NOT NULL,
    --jest_sasiadem NVARCHAR(100) NOT NULL,
    --lezy_na NVARCHAR(100) NOT NULL,
    --ma_dostep_do_oceanu NVARCHAR (100) NOT NULL,
    --ma_dostep_do_morza NVARCHAR (100) NOT NULL,
    --FOREIGN KEY (jest_sasiadem) REFERENCES panstwa(nazwa_panstwa),
    --FOREIGN KEY (lezy_na) REFERENCES kontynenty(nazwa_kontynentu),
    --FOREIGN KEY (ma_dostep_do_oceanu) REFERENCES oceany(nazwa_oceanu),
    --FOREIGN KEY (ma_dostep_do_morza) REFERENCES morza(nazwa_morza)
);

CREATE TABLE rzeki (
    nazwa_rzeki NVARCHAR (100) PRIMARY KEY,
    dlugosc_rzeki BIGINT NOT NULL,
    wpada_do_morza NVARCHAR (100) FOREIGN KEY (wpada_do_morza) REFERENCES morza(nazwa_morza),
    wpada_do_oceanu NVARCHAR (100) FOREIGN KEY (wpada_do_oceanu) REFERENCES oceany(nazwa_oceanu)
    --plynie_przez NVARCHAR (100) NOT NULL FOREIGN KEY (plynie_przez) REFERENCES panstwa(nazwa_panstwa),
);

CREATE TABLE miasta (
    nazwa_miasta NVARCHAR (100) PRIMARY KEY,
    powierzchnia BIGINT NOT NULL,
    liczba_ludnosci BIGINT NOT NULL,
    stolica BIT NOT NULL,
    nalezy_do NVARCHAR (100) NOT NULL FOREIGN KEY (nalezy_do) REFERENCES panstwa(nazwa_panstwa)
)

CREATE TABLE pasma_gorskie (
    nazwa_pasma NVARCHAR (100) PRIMARY KEY,
    dlugosc_pasma BIGINT NOT NULL,
    --jest_w NVARCHAR (100) NOT NULL FOREIGN KEY (jest_w) REFERENCES panstwa(nazwa_panstwa),
);

CREATE TABLE szczyty_gorskie (
    nazwa_szczytu NVARCHAR (100) PRIMARY KEY,
    wysokosc INT NOT NULL,
    lezy_na NVARCHAR (100) NOT NULL FOREIGN KEY (lezy_na) REFERENCES pasma_gorskie(nazwa_pasma)
);

--relacje wiele do wielu

CREATE TABLE kontynenty_panstwa (
    nazwa_panstwa NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa) REFERENCES panstwa(nazwa_panstwa),
    nazwa_kontynentu NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_kontynentu) REFERENCES kontynenty(nazwa_kontynentu),
	PRIMARY KEY (nazwa_panstwa, nazwa_kontynentu)
);

CREATE TABLE kontynenty_morza (
    nazwa_kontynentu NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_kontynentu) REFERENCES kontynenty(nazwa_kontynentu),
    nazwa_morza NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_morza) REFERENCES morza(nazwa_morza),
    PRIMARY KEY (nazwa_kontynentu, nazwa_morza)
);

CREATE TABLE panstwa_morza (
    nazwa_panstwa NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa) REFERENCES panstwa(nazwa_panstwa),
    nazwa_morza NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_morza) REFERENCES morza(nazwa_morza),
    PRIMARY KEY (nazwa_panstwa, nazwa_morza)
);

CREATE TABLE panstwa_sasiedzi (
    nazwa_panstwa1 NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa1) REFERENCES panstwa(nazwa_panstwa),
    nazwa_panstwa2 NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa2) REFERENCES panstwa(nazwa_panstwa),
    PRIMARY KEY (nazwa_panstwa1, nazwa_panstwa2)
);

CREATE TABLE rzeki_panstwa (
    nazwa_panstwa NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa) REFERENCES panstwa(nazwa_panstwa),
    nazwa_rzeki NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_rzeki) REFERENCES rzeki(nazwa_rzeki),
    PRIMARY KEY (nazwa_panstwa, nazwa_rzeki)
);

CREATE TABLE kontynenty_oceany (
    nazwa_kontynentu NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_kontynentu) REFERENCES kontynenty(nazwa_kontynentu),
    nazwa_oceanu NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_oceanu) REFERENCES oceany(nazwa_oceanu),
    PRIMARY KEY (nazwa_kontynentu, nazwa_oceanu)
);

CREATE TABLE pasma_panstwa (
    nazwa_pasma NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_pasma) REFERENCES pasma_gorskie(nazwa_pasma),
    nazwa_panstwa NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa) REFERENCES panstwa(nazwa_panstwa),
    PRIMARY KEY (nazwa_pasma, nazwa_panstwa)
);

CREATE TABLE panstwa_oceany (
    nazwa_panstwa NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_panstwa) REFERENCES panstwa(nazwa_panstwa),
    nazwa_oceanu NVARCHAR (100) NOT NULL FOREIGN KEY (nazwa_oceanu) REFERENCES oceany(nazwa_oceanu),
    PRIMARY KEY (nazwa_panstwa, nazwa_oceanu)
);
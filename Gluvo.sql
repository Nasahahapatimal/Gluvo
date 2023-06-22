CREATE TABLE KORISNIK (
	USERNAME VARCHAR(30) PRIMARY KEY NOT NULL,
	ŠIFRA VARCHAR(30) NOT NULL,
	IME_PREZIME VARCHAR(30) NOT NULL,
	TIP_KORISNIKA VARCHAR(15) CHECK (TIP_KORISNIKA IN ('Dostavljač','Kupac')),
	ADRESA TEXT NOT NULL
);

DROP TABLE KORISNIK
SELECT * FROM KORISNIK

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('Punker', '1234', 'Dušan Blagojević', 'Kupac', 'Beleška drugi deo broj 4');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('Lizi', '1234', 'Milica Jovanović', 'Kupac', 'Cara Dušana 15');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('Speedy', '1234', 'Marko Petrović', 'Dostavljač', 'Bulevar Oslobođenja 78');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('MerchQueen', '1234', 'Nikola Janković', 'Kupac', 'Kralja Petra 17');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('Sprinter', '1234', 'Ana Petrović', 'Dostavljač', 'Cara Lazara 9');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('SuperUser', '1234', 'Petar Marković', 'Kupac', 'Maksima Gorkog 22');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('Rider', '1234', 'Jovana Popović', 'Dostavljač', 'Vojvode Mišića 7');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('SweetTooth', '1234', 'Marija Petrović', 'Kupac', 'Despota Stefana 14');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('ExpressDriver', '1234', 'Ivan Stojanović', 'Dostavljač', 'Bulevar Nikole Tesle 11');

INSERT INTO KORISNIK (USERNAME, ŠIFRA, IME_PREZIME, TIP_KORISNIKA, ADRESA)
VALUES ('ChocoLover', '1234', 'Jelena Petrović', 'Kupac', 'Karađorđeva 8');

CREATE TABLE RESTORAN(
	ID_RESTORANA SERIAL PRIMARY KEY,
	NAZIV VARCHAR(25) NOT NULL,
	ADRESA TEXT
);

SELECT * FROM RESTORAN

INSERT INTO RESTORAN (NAZIV, ADRESA)
VALUES ('Tri Šešira', 'Skadarska 29'),
       ('Šaran', 'Ribarsko ostrvo'),
       ('Zavičaj', 'Knez Mihailova 18'),
       ('Vuk', 'Bulevar Mihajla Pupina 12'),
       ('Dunav', 'Dunavska obala bb'),
       ('Proleće', 'Karađorđeva 3'),
       ('Stara Sokolova', 'Zlatiborska 12'),
       ('Dva Jelena', 'Skadarska 32'),
       ('Stara Hercegovina', 'Džordža Vašingtona 19'),
       ('Tri Lista Duvana', 'Gospodar Jovanova 46');

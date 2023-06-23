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
	   
CREATE TABLE JELA (
	ID_JELA SERIAL,
	NAZIV VARCHAR(25) NOT NULL,
	RESTORAN INTEGER NOT NULL,
	CENA INTEGER NOT NULL,
	OPIS TEXT,
	PRIMARY KEY (ID_JELA),
	FOREIGN KEY (RESTORAN) REFERENCES RESTORAN(ID_RESTORANA)
);


INSERT INTO JELA(NAZIV,RESTORAN,CENA,OPIS)
VALUES
    ('Ćevapi', 1, 500, 'Tradiconalno jelo sa ukusnim ćevapima.'),
    ('Riblja čorba', 2, 700, 'Bogata riblja čorba sa svežim začinima.'),
    ('Sarma', 3, 600, 'Mirisna sarma punjena mlevenim mesom i pirinčem.'),
    ('Piletina sa kajmakom', 4, 750, 'Sočna piletina sa kajmakom i prilogom po izboru.'),
    ('Pljeskavica', 5, 550, 'Velika pljeskavica sa odabranim dodacima po želji.'),
    ('Punjene paprike', 6, 650, 'Slasne punjene paprike sa domaćom pavlakom.'),
    ('Pasulj sa suvim mesom', 7, 500, 'Debela porcija pasulja sa ukusnim suvim mesom.'),
    ('Karađorđeva šnicla', 8, 800, 'Mekana šnicla punjena kajmakom i panirana.'),
    ('Burek', 9, 350, 'Hrskavi burek sa sirom ili mesom.'),
    ('Gibanica', 10, 400, 'Mirisna gibanica sa sirom i korama sa domaćim filom.'),
    ('Gurmanski sendvič', 1, 450, 'Sendvič sa svežim povrćem, suhomesnatim proizvodima i aromatičnim prelivom.'),
    ('Čorba od pečuraka', 3, 350, 'Kremasta čorba od svežih pečuraka sa začinskim biljem.'),
    ('Palačinke sa nutelom', 4, 300, 'Mekane palačinke sa ukusnom Nutellom i šlagom.'),
    ('Plodovi mora pasta', 5, 900, 'Specijalitet od testenine sa bogatim sosom od plodova mora.'),
    ('Roštilj mix', 6, 1200, 'Raznovrstan mix roštilja sa pečenim mesom i prilozima.'),
    ('Kajgana sa slaninom', 7, 400, 'Sočna kajgana sa hrskavom slaninom i svežim začinima.'),
    ('Morska riba na žaru', 8, 1500, 'Sveže ulovljena morska riba sa roštilja i garniturom po izboru.'),
    ('Belo vino pileći file', 9, 850, 'Pečeni pileći file u belom vinu sa aromatičnim začinima i prilozima.'),
    ('Teleća čorba', 2, 400, 'Bogata teleća čorba sa svežim povrćem i kockicama mesa.'),
    ('Palačinke sa džemom', 10, 250, 'Slasne palačinke sa domaćim džemom po izboru.')	
;

SELECT * FROM JELA
SELECT * FROM KORISNIK
SELECT * FROM RESTORAN

CREATE TABLE PORUDZBINA (
    ID_PORUDZBINE SERIAL PRIMARY KEY,
    USER_DOSTAVLJACA VARCHAR(25),
    USER_KUPCA VARCHAR(25) NOT NULL,
    NAZIVI_JELA TEXT[] NOT NULL,
    DOSTAVLJEN BOOLEAN,
    UKUPNA_CENA INTEGER,
    FOREIGN KEY (USER_DOSTAVLJACA) REFERENCES KORISNIK (USERNAME),
    FOREIGN KEY (USER_KUPCA) REFERENCES KORISNIK (USERNAME)
);

SELECT * FROM PORUDZBINA
DROP TABLE PORUDZBINA

INSERT INTO PORUDZBINA(USER_DOSTAVLJACA,USER_KUPCA,NAZIVI_JELA,DOSTAVLJEN,UKUPNA_CENA)
VALUES
	('Speedy','Lizi',ARRAY['Pasulj sa suvim mesom','Teleća Čorba'],True,900)








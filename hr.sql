CREATE TABLE Angajati_Moonlight(
id_angajat number(3) primary key,
post_angajat varchar2(30),
nume_angajat varchar2(30),
prenume_angajat varchar2(30),
data_nastere date,
salariu_angajat number(4),
telefon_angajat varchar2(30),
email_angajat varchar2(30),
data_angajare date);
create sequence PK_angajat start with 1 increment by 1;
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Store Manager', 'Guran', 'Sebastian', '26.January.2002', '4000', '0764450016', 's.dieter','03.April.2022');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Asistent Manager', 'Greere', 'Ionut', '15.April.2002', '4000', '0721345089', 'g.cristi','12.May.2022');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Barista', 'Enache', 'Cristina', '14.January.2002', '2500', '0720981744', 'scriti.enache','20.October.2021');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Barista', 'Voinea', 'Alexandru', '09.June.2002', '2500', '0744732911', 'vo.alex','21.August.2022');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Contabil', 'Martin', 'Byrde', '09.May.1989', '6000', '0251498597', 'm.byrde','10.September.2016');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Vanzator', 'Popescu', 'Marcel', '19.March.1996', '2300', '0784323798', 'marcel.popi','01.February.2018');
insert into Angajati_Moonlight values(PK_angajat.nextval, 'Vanzator', 'Matei', 'Carmen', '13.August.2000', '2300', '0721698724', 'carmelita.matei','15.May.2019');
CREATE TABLE Furnizori(
id_furnizor number(3) primary key,
nume_furnizor varchar2(30),
id_produs number(3),
nume_produs varchar2(30));
create sequence PK_furnizori start with 1 increment by 1;
insert into furnizori values(PK_furnizori.nextval, 'Organical Coffee', '1','Cafea Arabica');
insert into furnizori values(PK_furnizori.nextval, 'Organical Coffee', '2','Cafea Etiopia');
insert into furnizori values(PK_furnizori.nextval, 'Laptarescu', '21','Lapte degresat');
insert into furnizori values(PK_furnizori.nextval, 'Laptarescu', '22','Lapte de migdale');
insert into furnizori values(PK_furnizori.nextval, 'Laptarescu', '23','Lapte de soia');
insert into furnizori values(PK_furnizori.nextval, 'Laptarescu', '24','Lapte de cocos');
insert into furnizori values(PK_furnizori.nextval, 'Papetaria.ro', '10','Stilou');
insert into furnizori values(PK_furnizori.nextval, 'Papetaria.ro', '13','Agenda');
insert into furnizori values(PK_furnizori.nextval, 'Ceramic Vibe', '33','Cana emailata');
CREATE TABLE Produse_Alimentare(
id_produs number(3) primary key,
nume_produs varchar2(30),
pret_lei number(3),
pret_euro number(3));
create sequence PK_produsealimentare start with 1 increment by 1;
insert into produse_alimentare values(PK_produsealimentare.nextval, 'Croissant', '10','2');
insert into produse_alimentare values(PK_produsealimentare.nextval, 'Senvis bacon', '20','4');
insert into produse_alimentare values(PK_produsealimentare.nextval, 'Senvis cu ou', '15','3');
insert into produse_alimentare values(PK_produsealimentare.nextval, 'Bagel', '10','2');
CREATE TABLE Produse_NonAlimentare(
id_produs number(3) primary key,
nume_produs varchar2(30),
pret_lei number(3),
pret_euro number(3));
create sequence PK_produsenonalimentare start with 1 increment by 1;
insert into produse_nonalimentare values(PK_produsenonalimentare.nextval, 'Agenda', '30','6');
insert into produse_nonalimentare values(PK_produsenonalimentare.nextval, 'Stilou', '100','20');
insert into produse_nonalimentare values(PK_produsenonalimentare.nextval, 'Cana emailata', '60','12');

CREATE TABLE Bauturi(
id_bautura number(3) primary key,
nume_bautura varchar2(30),
pret_lei number(3),
pret_euro number(3));
create sequence PK_bauturi start with 1 increment by 1;
insert into bauturi values(PK_bauturi.nextval, 'Cappucino', '15','3');
insert into bauturi values(PK_bauturi.nextval, 'Espresso', '12','2');
insert into bauturi values(PK_bauturi.nextval, 'Americano', '10','2');
insert into bauturi values(PK_bauturi.nextval, 'Cafe Latte', '13','3');
insert into bauturi values(PK_bauturi.nextval, 'Ciocolata calda', '10','2');
insert into bauturi values(PK_bauturi.nextval, 'Ceai fierbinte', '10','2');

CREATE TABLE clienti_moonlight(
id_comanda number(3) primary key,
id_produs number(3),
nume_produs varchar2(30),
id_bautura number(3),
nume_bautura varchar2(30),
pret_lei number(3),
pret_euro number(3),
FOREIGN KEY (id_produs) REFERENCES produse_alimentare (id_produs) ON DELETE CASCADE,
FOREIGN KEY (id_produs) REFERENCES produse_nonalimentare(id_produs) ON DELETE CASCADE,
FOREIGN KEY (id_bautura) REFERENCES bauturi (id_bautura) ON DELETE CASCADE);
create sequence PK_clienti start with 1 increment by 1;
insert into clienti_moonlight values(PK_clienti.nextval, '1', 'agenda','1', 'Cappucino','45','9');
insert into clienti_moonlight values(PK_clienti.nextval, '1', 'croissant','1', 'Cappucino','25','5');
insert into clienti_moonlight values(PK_clienti.nextval, NULL, NULL,'5','Ciocolata calda','10','2');

create table incasari_moonlight(
id_incasari number(5) primary key,
luna_incasari varchar2(30),
incasari_lei number(10),
incasari_euro number(10));
create sequence PK_incasari start with 1 increment by 1;
insert into incasari_moonlight values(PK_incasari.nextval, 'Ianuarie','1500000','300000');
insert into incasari_moonlight values(PK_incasari.nextval, 'Februarie','1200000','240000');
insert into incasari_moonlight values(PK_incasari.nextval, 'Martie','1350000','270000');
insert into incasari_moonlight values(PK_incasari.nextval, 'Aprilie','1320000','264000');
insert into incasari_moonlight values(PK_incasari.nextval, 'Mai','1455000','291000');

CREATE TABLE evidenta_aprovizionarii(
id_ev number(3) primary key,
data_aprov date,
id_produs number(3) not null,
nume_produs varchar2(30),
cantitate_aprov number(5),
id_furnizor number(3) not null,
nume_furnizor varchar2(30),
id_angajat number(3)not null,
FOREIGN KEY (id_furnizor) REFERENCES furnizori (id_furnizor) ON DELETE CASCADE,
FOREIGN KEY (id_angajat) REFERENCES angajati_moonlight (id_angajat) ON DELETE CASCADE,
FOREIGN KEY (id_produs) REFERENCES produse_nonalimentare (id_produs) ON DELETE CASCADE);
create sequence PK_evidenta_aprovizionarii start with 1 increment by 1;
insert into evidenta_aprovizionarii values(PK_evidenta_aprovizionarii.nextval, '21.October.2022', '1', 'Cafea Arabica', '100','1','Organical Coffee','3');
insert into evidenta_aprovizionarii values(PK_evidenta_aprovizionarii.nextval, '21.October.2022', '2', 'Cafea Etiopia', '100','2','Organical Coffee','3');

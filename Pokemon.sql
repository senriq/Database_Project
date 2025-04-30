--Name: Sofia Enriquez and Jackson Friedlander
--Pokemon Database

drop table Pokemon cascade constraints;
drop table Poke_Type cascade constraints;
drop table Generation cascade constraints;
drop table P2T cascade constraints;
drop table P2G cascade constraints;

Create Table Poke_Type (
    T_ID varchar(2) NOT NULL PRIMARY KEY,
    T_Name varchar(10),
    Strength varchar(2),
    Weakness varchar(2)
);

Create Table Generation (
    G_ID varchar(1) NOT NULL PRIMARY KEY,
    Region varchar(10),
    StartDate date,
    EndDate date
);

Create Table Pokemon (
    P_ID varchar(4) NOT NULL PRIMARY KEY,
    P_Name Varchar(20),
    Weight Decimal(6,2),
    Height Decimal(6,2),
    DoesEvolve int,
    HP int,
    T_ID Varchar(10),
    FOREIGN KEY (T_ID) REFERENCES Poke_Type(T_ID),
    G_ID Varchar (4),
    FOREIGN KEY (G_ID) REFERENCES Generation(G_ID) --What gen did pokemon 1st appeat
);

Create Table P2T (
    P_ID varchar(1),
    T_ID varchar(10)
);

Create Table P2G (
    P_ID varchar(1),
    G_ID varchar(10)
);

Insert into Poke_Type
Values('NO', 'Normal', '', '');

Insert into Poke_Type
Values('FI', 'Fire', '', '');

Insert into Poke_Type
Values('WA', 'Water', '', '');

Insert into Poke_Type
Values('GR', 'Grass', '', '');

Insert into Poke_Type
Values('FI', 'Fighting', '', '');

Insert into Poke_Type
Values('PO', 'Poison', '', '');

Insert into Poke_Type
Values('EL', 'Electric', '', '');

Insert into Poke_Type
Values('GR', 'Ground', '', '');

Insert into Poke_Type
Values('RO', 'Rock', '', '');

Insert into Poke_Type
Values('PS', 'Psychic', '', '');

Insert into Poke_Type
Values('IC', 'Ice', '', '');

Insert into Poke_Type
Values('BU', 'Bug', '', '');

Insert into Poke_Type
Values('GH', 'Ghost', '', '');

Insert into Poke_Type
Values('ST', 'Steel', '', '');

Insert into Poke_Type
Values('DR', 'Dragon', '', '');

Insert into Poke_Type
Values('DA', 'Dark', '', '');

Insert into Poke_Type
Values('FA', 'Fairy', '', '');

Select * from Poke_Type;


Insert into Generation
Values('1', 'Kanto', '1996-02-27', '1999-11-20');

Insert into Generation
Values('2', 'Johto', '1999-11-21', '2002-11-20');

Insert into Generation
Values('3', 'Hoenn', '2002-11-21', '2006-09-27');

Insert into Generation
Values('4', 'Sinnoh', '2006-09-28', '2010-09-17');

Insert into Generation
Values('5', 'Unova', '2010-09-18', '2013-10-11');

Insert into Generation
Values('6', 'Kalos', '2013-10-12', '2016-11-17');

Insert into Generation
Values('7', 'Alola', '2016-11-18', '2019-11-14');

Insert into Generation
Values('8', 'Galar', '2019-11-15', '2022-11-17');

Insert into Generation
Values('9', 'Paldea', '2022-11-18', null);

Select * from Generation;


Insert into Generation
Values('0066', 'Machop', 43.0, 0.79, 1, 5, 'FI', '1');

select * from pokemon;
--Insert into Generation
--Values('', '', , , 1, , '', '');
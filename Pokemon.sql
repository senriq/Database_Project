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
    DoesEvolve char(1),
    HP int,
    T_ID Varchar(2),
    FOREIGN KEY (T_ID) REFERENCES Poke_Type(T_ID),
    G_ID Varchar (1),
    FOREIGN KEY (G_ID) REFERENCES Generation(G_ID) 
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
Values('NO', 'Normal', null, 'FG');

Insert into Poke_Type
Values('FI', 'Fire', 'GR', 'WA');

Insert into Poke_Type
Values('WA', 'Water', 'FI', 'WA');

Insert into Poke_Type
Values('GR', 'Grass', 'WA', 'FI');

Insert into Poke_Type
Values('FG', 'Fighting', 'PS', 'DA');

Insert into Poke_Type
Values('PO', 'Poison', 'FA', 'GR');

Insert into Poke_Type
Values('EL', 'Electric', 'FL', 'GR');

Insert into Poke_Type
Values('GR', 'Ground', 'EL', 'IC');

Insert into Poke_Type
Values('RO', 'Rock', 'BU', 'ST');

Insert into Poke_Type
Values('PS', 'Psychic', 'FG', 'DA');

Insert into Poke_Type
Values('IC', 'Ice', 'FL', 'FI');

Insert into Poke_Type
Values('BU', 'Bug', 'DA', 'RO');

Insert into Poke_Type
Values('GH', 'Ghost', 'GH', 'GH');

Insert into Poke_Type
Values('ST', 'Steel', 'FA', 'GR');

Insert into Poke_Type
Values('DR', 'Dragon', 'DR', 'IC');

Insert into Poke_Type
Values('DA', 'Dark', 'PS', 'FA');

Insert into Poke_Type
Values('FA', 'Fairy', 'FG', 'ST');

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

Insert into Pokemon
Values('0004', 'Charmander', 8.5, 0.6, 1, 39, 'FI', '1');

Insert into Pokemon
Values('0005', 'Charmeleon', 19.0, 1.1, 1, 58, 'FI', '1');

Insert into Pokemon
Values('0006', 'Charizard', 90.5, 1.7, 0, 78, 'FI', '1');

Insert into Pokemon
Values('0066', 'Machop', 43.0, 0.79, 1, 5, 'FG', '1');

Insert into Pokemon
Values('0067', 'Machoke', 70.0, 1.5, 1, 5, 'FG', '1');

Insert into Pokemon
Values('0068', 'Machamp', 130.0, 1.6, 1, 5, 'FG', '1');

Insert into Pokemon
Values('0083', 'Farfetchd', 15.0, 0.8, 0, 52, 'NO', '1');

Insert into Pokemon
Values('0179', 'Mareep', 7.8, 0.6, 1, 55, 'EL', '2');

Insert into Pokemon
Values('0180', 'Flaaffy', 13.3, 0.8, 1, 70, 'EL', '2');

Insert into Pokemon
Values('0181', 'Ampharos', 61.5, 1.4, 0, 90, 'EL', '2');

Insert into Pokemon
Values('0923', 'Girafarig', 41.5, 1.5, 0, 70, 'PS', '2');

Insert into Pokemon
Values('0252', 'Treecko', 5.0, 0.5, 1, 40, 'GR', '3');

Insert into Pokemon
Values('0253', 'Grovyle', 21.6, 0.9, 1, 50, 'GR', '3');

Insert into Pokemon
Values('0254', 'Sceptile', 52.2, 1.7, 0, 70, 'GR', '3');

Insert into Pokemon
Values('0276', 'Taillow', 2.3, 0.3, 1, 40, 'NO', '3');

Insert into Pokemon
Values('0277', 'Swellow', 19.8, 0.7, 0, 60, 'NO', '3');

Insert into Pokemon
Values('0447', 'Riolu', 20.2, 0.7, 1, 40, 'FG', '4');

Insert into Pokemon
Values('0448', 'Lucario', 54.0, 1.2, 0, 70, 'FG', '4');

Insert into Pokemon
Values('0443', 'Gible', 20.5, 0.7, 1, 58, 'DR', '4');

Insert into Pokemon
Values('0444', 'Gabite', 56.0, 1.4, 1, 68, 'DR', '4');

Insert into Pokemon
Values('0445', 'Garchomp', 95.0, 1.9, 0, 108, 'DR', '4');

Insert into Pokemon
Values('0491', 'Darkrai', 50.5, 1.5, 0, 70, 'DA', '4');

Insert into Pokemon
Values('0543', 'Venipede', 5.3, 0.4, 1, 30, 'BU', '5');

Insert into Pokemon
Values('0544', 'Whirlipede', 58.5, 1.2, 1, 40, 'BU', '5');

Insert into Pokemon
Values('0545', 'Scolipede', 200.5, 2.5, 0, 60, 'BU', '5');

Insert into Pokemon
Values('0607', 'Litwick', 3.1, 0.3, 1, 50, 'GH', '5');

Insert into Pokemon
Values('0608', 'Lampent', 13.0, 0.6, 1, 60, 'GH', '5');

Insert into Pokemon
Values('0609', 'Chandelure', 34.3, 1.0, 0, 60, 'GH', '5');

Insert into Pokemon
Values('0656', 'Froakie', 7.0, 0.3, 1, 41, 'WA', '6');

Insert into Pokemon
Values('0657', 'Frogadier', 10.9, 0.6, 1, 54, 'WA', '6');

Insert into Pokemon
Values('0658', 'Greninja', 40.0, 1.5, 0, 72, 'WA', '6');

Insert into Pokemon
Values('0679', 'Honedge', 2.0, 0.8, 1, 45, 'ST', '6');

Insert into Pokemon
Values('0680', 'Doublade', 4.5, 0.8, 1, 59, 'ST', '6');

Insert into Pokemon
Values('0681', 'Aegislash', 53.0, 1.7, 0, 60, 'ST', '6');

Insert into Pokemon
Values('0755', 'Morelull', 1.5, 0.2, 1, 40, 'FA', '7');

Insert into Pokemon
Values('0756', 'Shiinotic', 11.5, 1.0, 0, 60, 'FA', '7');

Insert into Pokemon
Values('0037A', 'Alolan Vulpix', 9.9, 0.6, 1, 38, 'IC', '7');

Insert into Pokemon
Values('0038A', 'Alolan Ninetales', 19.9, 1.1, 0, 73, 'IC', '7');

Insert into Pokemon
Values('0874', 'Stonjourner', 520.0, 2.5, 0, 100, 'RO', '8');

Insert into Pokemon
Values('0875', 'Eiscue', 89.0, 1.4, 0, 75, 'IC', '8');

Insert into Pokemon
Values('0943', 'Shroodle', 0.7, 0.2, 1, 40, 'PO', '9');

Insert into Pokemon
Values('0944', 'Grafaiai', 27.2, 0.7, 0, 63, 'PO', '9');

Select * from pokemon;
--Insert into Generation
--Values('', '', , , 1, , '', '');
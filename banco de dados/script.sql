create database kanye;
use kanye;

create table Album (
id int primary key auto_increment,
nome varchar(45),
lancamento date,
vendas decimal (12,0)
);

create table Musica (
id int primary key auto_increment,
nome varchar(100), 
streamings decimal (15,0),
fkAlbum int,
constraint fkCAlbum foreign key (fkAlbum) references Album(id)
);

create table Premios (
id int primary key auto_increment,
nome varchar (100),
categoria varchar (50),
ano year,
fkAlbum int,
constraint fkCA foreign key (fkAlbum) references Album(id),
fkMusica int,
constraint fkCM foreign key (fkMusica) references Musica(id)
);

create table Usuario (
id int primary key auto_increment,
nome varchar (45),
email varchar (100),
senha varchar (24)
);

insert into Album (nome, lancamento, vendas) values  
('The College Dropout', '2004-02-10', 4000000),
('Late Registration', '2005-08-30', 3100000),
('Graduation', '2007-09-11', 5000000),
('808s & Heartbreak', '2008-11-24', 3000000),
('My Beautiful Dark Twisted Fantasy', '2010-11-22', 3000000),
('Watch The Throne', '2011-08-08', 5000000),
('Yeezus', '2013-06-18', 2000000),
('The Life of Pablo', '2016-02-14', 3000000),
('Ye', '2018-06-01', 500000),
('Kids See Ghosts', '2018-06-08', 500000),
('Jesus Is King', '2019-10-25', 500000),
('Donda', '2021-08-29', 1000000);

insert into Musica (nome, streamings, fkAlbum) values
-- Late Registration
('Heard ''Em Say', 95000000, 2),
('Touch The Sky', 210000000, 2),
('Gold Digger', 950000000, 2),
('Drive Slow', 70000000, 2),
('Diamonds From Sierra Leone', 180000000, 2),
('Hey Mama', 140000000, 2),
('Celebration', 35000000, 2),
('Gone', 80000000, 2),
('Late', 25000000, 2),
-- Graduation
('Good Morning', 160000000, 3),
('Champion', 130000000, 3),
('Stronger', 1300000000, 3),
('I Wonder', 420000000, 3),
('Good Life', 500000000, 3),
('Can''t Tell Me Nothing', 520000000, 3),
('Flashing Lights', 850000000, 3),
('Everything I Am', 170000000, 3),
('Homecoming', 780000000, 3),
-- 808s & Heartbreak
('Say You Will', 80000000, 4),
('Welcome to Heartbreak', 70000000, 4),
('Heartless', 1500000000, 4),
('Amazing', 120000000, 4),
('Love Lockdown', 620000000, 4),
('Paranoid', 160000000, 4),
('Street Lights', 180000000, 4),
-- My Beautiful Dark Twisted Fantasy
('Dark Fantasy', 130000000, 5),
('Gorgeous', 220000000, 5),
('POWER', 980000000, 5),
('All Of The Lights', 900000000, 5),
('Monster', 480000000, 5),
('Devil In A New Dress', 310000000, 5),
('Runaway', 1100000000, 5),
('Hell Of A Life', 120000000, 5),
('Lost In The World', 100000000, 5),
-- Watch The Throne
('No Church In The Wild', 520000000, 6),
('Otis', 260000000, 6),
('N*ggas In Paris', 1400000000, 6),
('Gotta Have It', 110000000, 6),
('Why I Love You', 90000000, 6),
-- Yeezus
('On Sight', 190000000, 7),
('Black Skinhead', 430000000, 7),
('New Slaves', 260000000, 7),
('Hold My Liquor', 170000000, 7),
('Blood On The Leaves', 320000000, 7),
('Bound 2', 780000000, 7),
-- The Life Of Pablo
('Ultralight Beam', 300000000, 8),
('Father Stretch My Hands Pt. 1', 1400000000, 8),
('Famous', 650000000, 8),
('Waves', 420000000, 8),
('Real Friends', 240000000, 8),
('Wolves', 370000000, 8),
('No More Parties In LA', 330000000, 8),
('Saint Pablo', 250000000, 8),
-- ye
('I Thought About Killing You', 95000000, 9),
('Yikes', 420000000, 9),
('All Mine', 650000000, 9),
('Wouldn''t Leave', 110000000, 9),
('No Mistakes', 90000000, 9),
('Ghost Town', 820000000, 9),
('Violent Crimes', 500000000, 9),
-- Kids See Ghosts
('Feel The Love', 180000000, 10),
('Fire', 150000000, 10),
('4th Dimension', 220000000, 10),
('Freeee (Ghost Town Pt. 2)', 120000000, 10),
('Reborn', 950000000, 10),
('Kids See Ghosts', 90000000, 10),
('Cudi Montage', 140000000, 10),
-- Jesus Is King
('Every Hour', 40000000, 11),
('Selah', 130000000, 11),
('Follow God', 520000000, 11),
('Closed On Sunday', 260000000, 11),
('On God', 150000000, 11),
('God Is', 110000000, 11),
('Use This Gospel', 300000000, 11),
-- Donda
('Jail', 250000000, 12),
('Off The Grid', 720000000, 12),
('Hurricane', 980000000, 12),
('Praise God', 850000000, 12),
('Moon', 430000000, 12),
('Believe What I Say', 240000000, 12),
('24', 160000000, 12),
('Come To Life', 310000000, 12);

insert into Premios (nome, categoria, ano, fkAlbum, fkMusica) values
-- The College Dropout
('Grammy', 'Melhor Álbum de Rap', 2005, 1, NULL),
('Grammy', 'Melhor Música de Rap', 2005, NULL, 11),
-- Late Registration
('Grammy', 'Melhor Álbum de Rap', 2006, 2, NULL),
('Grammy', 'Melhor Performance Solo de Rap', 2006, NULL, 19),
-- Graduation
('Grammy', 'Melhor Álbum de Rap', 2008, 3, NULL),
('VMA', 'Melhor Videoclipe', 2008, NULL, 24),
-- 808s & Heartbreak
('American Music Awards', 'Melhor Álbum Hip-Hop', 2009, 4, NULL),
-- My Beautiful Dark Twisted Fantasy
('BET Awards', 'Álbum do Ano', 2011, 5, NULL),
('Grammy', 'Melhor Performance de Rap', 2012, NULL, 39),
-- Watch The Throne
('Grammy', 'Melhor Performance de Rap', 2012, NULL, 45),
-- Yeezus
('Grammy', 'Melhor Álbum de Rap', 2014, 7, NULL),
-- The Life Of Pablo
('Billboard Music Awards', 'Melhor Álbum de Rap', 2016, 8, NULL),
-- ye
('BET Hip Hop Awards', 'Álbum do Ano', 2018, 9, NULL),
-- Kids See Ghosts
('NME Awards', 'Melhor Álbum', 2019, 10, NULL),
-- Jesus Is King
('Grammy', 'Melhor Álbum Cristão Contemporâneo', 2021, 11, NULL),
-- Donda
('BET Hip Hop Awards', 'Álbum do Ano', 2021, 12, NULL);

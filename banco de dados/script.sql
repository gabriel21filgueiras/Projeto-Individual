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


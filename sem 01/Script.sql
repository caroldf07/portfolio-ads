create database PTI;

use PTI;

CREATE TABLE UF (
	id_uf int unsigned not null auto_increment,
    UF varchar(2),
    PRIMARY KEY (id_uf)
);

CREATE TABLE Cidade (
	id_cidade int unsigned not null auto_increment,
    UF varchar(100),
    PRIMARY KEY (id_cidade)
);

CREATE TABLE Bairro (
	id_bairro int unsigned not null auto_increment,
    Bairro varchar(100),
    PRIMARY KEY (id_bairro)
);

DROP TABLE Cidade;

CREATE TABLE Cidade (
	id_cidade int unsigned not null auto_increment,
    Cidade varchar(100),
    PRIMARY KEY (id_cidade)
);

CREATE TABLE Usuario (
	CPF int unsigned not null,
    Nome varchar(100),
    Sobrenome varchar(100),
    Email varchar(50),
    Telefone int (11),
    UF_id int unsigned not null ,
    Cidade_id int unsigned not null ,
    Bairro_id int unsigned not null,
    Endereco varchar(100),
    Numero int (5),
    PRIMARY KEY (CPF),
    constraint fk_UF foreign key (UF_id) references UF (id_uf),
    constraint fk_Cidade foreign key (Cidade_id) references Cidade (id_cidade),
    constraint fk_Bairro foreign key (Bairro_id) references Bairro (id_bairro)
);

CREATE TABLE Telefone (
	CPF int unsigned not null,
	Telefone int (11),
    constraint fk_CPF foreign key (CPF) references Usuario (CPF),
    PRIMARY KEY (CPF)
);

CREATE TABLE Email (
	CPF int unsigned not null,
	Email varchar(50),
    constraint fk_CPF_email foreign key (CPF) references Usuario (CPF),
    PRIMARY KEY (CPF)
);

CREATE table Localizacao (
	id_local int unsigned not null auto_increment,
    UF_id int unsigned not null ,
    Cidade_id int unsigned not null ,
    Bairro_id int unsigned not null,
    Endereco varchar(100),
    Numero int (5),
    PRIMARY KEY (id_local),
    constraint fk_UF_local foreign key (UF_id) references UF (id_uf),
    constraint fk_Cidade_local foreign key (Cidade_id) references Cidade (id_cidade),
    constraint fk_Bairro_local foreign key (Bairro_id) references Bairro (id_bairro)
);

CREATE table Denuncia (
	id_denuncia int unsigned not null auto_increment,
    CPF int unsigned not null,
    UF_id int unsigned not null ,
    Cidade_id int unsigned not null ,
    Bairro_id int unsigned not null,
    Endereco varchar(100),
    Numero int (5),
    Foto blob,
    PRIMARY KEY (id_denuncia),
    constraint fk_Nome foreign key (CPF) references usuario (CPF),
    constraint fk_UF_denuncia foreign key (UF_id) references UF (id_uf),
    constraint fk_Cidade_denuncia foreign key (Cidade_id) references Cidade (id_cidade),
    constraint fk_Bairro_denuncia foreign key (Bairro_id) references Bairro (id_bairro)
);
    
    
    
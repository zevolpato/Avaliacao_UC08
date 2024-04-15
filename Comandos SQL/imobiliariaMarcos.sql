create database Imobiliaria;
use Imobiliaria;

create table Cliente(
	idCliente int not null auto_increment,
	nome varchar(45) not null,
	numero decimal not null,
	primary key(idCliente)
);

create table Proprietario(
	idProprietario int not null auto_increment,
	nome varchar(45) not null,
	email varchar(45) not null,
	telefone decimal not null,
	primary key(idProprietario)
);

create table Propriedade(
	idPropriedade int not null auto_increment,
	titulo varchar(45) not null,
	descricao varchar(200) not null,
	preco float not null,
	endereco varchar(100) not null,
	cidade varchar(100) not null,
	estado varchar(2) not null,
	cep decimal not null,
	num_quartos decimal not null,
	num_banheiros decimal not null,
	area varchar(45) not null,
	fk_idProprietario int not null,	
	primary key(idPropriedade),
	foreign key(fk_idProprietario) references Proprietario(idProprietario)
);

create table Agente(
	idAgente int not null auto_increment,
	nome varchar(45) not null,
	email varchar(45) not null,
	telefone decimal not null,
	fk_idPropriedade int not null,
	primary key(idAgente),
	foreign key(fk_idPropriedade) references Propriedade(idPropriedade)
);

create table Comentarios(
	idComentarios int not null auto_increment,
	classificacao varchar(45) not null,
	comentario varchar(100),
	fk_idPropriedade int not null,
	fk_idCliente int not null,
	primary key(idComentarios),
	foreign key(fk_idPropriedade) references Propriedade(idPropriedade),
	foreign key(fk_idCliente) references Cliente(idCliente)		
);

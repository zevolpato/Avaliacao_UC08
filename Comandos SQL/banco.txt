create database nome_do_banco; //cria base de dados
use nome_do_banco;   // usa a base de dados

// Cria a tabela cliente
CREATE TABLE Cliente (
	idCliente INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,	
	dataNascimento DATE NOT NULL,
	whatsapp INT NOT NULL,
	PRIMARY KEY(idCliente)
 );

// Cria a tabela Servico

CREATE TABLE Servico (
	idServico INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	valor FLOAT NOT NULL,
	descricao VARCHAR(100),
	PRIMARY KEY(idServico)
);

CREATE TABLE Agenda (
	idAgenda INT NOT NULL AUTO_INCREMENT,
	data DATETIME NOT NULL,
	pago CHAR(1) NOT NULL,
	dia DATE NOT NULL,
	hora TIME NOT NULL,
	fk_idCliente INT NOT NULL,
	fk_idServico INT NOT NULL,
	PRIMARY KEY (idAgenda),
	FOREIGN KEY (Fk_idCliente) REFERENCES CLiente (idCliente),
	FOREIGN KEY (Fk_idServico) REFERENCES Servico (idServico)
);




DESCRIBE Cliente;     // mostra a estrutura da tabela
desc Cliente;   




use barbearia;
CREATE TABLE Cliente (
	idCliente INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,	
	dataNascimento DATE NOT NULL,
	whatsapp INT NOT NULL,
	PRIMARY KEY(idCliente)
 );
show tables;
desc Cliente;

drop table Cliente;

insert into Cliente (nome, dataNascimento, whatsapp)
values ("Erasto", "1978-08-12", 12982964018);




FOREIGN KEY (fkServico) references Servico(idServico)  
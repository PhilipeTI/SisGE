-- A linha abaixo cria um banco de dados
create database dados;
-- A linha abaixo escolhe o banco de dados a ser utilizado
use dados;
-- O bloco de instruções abaixo cria uma tabela
CREATE TABLE Usuario (
  idUser INTEGER(20) NOT NULL AUTO_INCREMENT,
  CPF BIGINT(20) NOT NULL,
  Nome VARCHAR(30) NOT NULL,
  Telefone INTEGER(20),
  NomeUser VARCHAR(20) NOT NULL,
  Senha VARCHAR(20) NOT NULL,
  Email VARCHAR(50) NOT NULL,
  Endereco VARCHAR(50),
  PRIMARY KEY(idUser)
);

CREATE TABLE Encomenda (
  Cod_Encomenda INTEGER(20) NOT NULL,
  StatusEnc VARCHAR(20),
  FormaPag VARCHAR(20),
  PRIMARY KEY(Cod_Encomenda)
);

CREATE TABLE Produto (
  idProduto INTEGER(20) NOT NULL,
  Nome VARCHAR(30),
  Tipo VARCHAR(20),
  PrecoUnit VARCHAR(20),
  Descricao VARCHAR(50),
  PRIMARY KEY(idProduto)
);

CREATE TABLE Compra (
  Usuario_idUser INTEGER(20) NOT NULL,
  Produto_idProduto INTEGER(20) NOT NULL,
  Data_Hora DATE,
  Quantidade INTEGER(20),
  PRIMARY KEY(Usuario_idUser, Produto_idProduto, Data_Hora),
  FOREIGN KEY(Usuario_idUser) REFERENCES Usuario(idUser),
  FOREIGN KEY(Produto_idProduto) REFERENCES Produto(idProduto)
);

CREATE TABLE Pertence (
  Produto_idProduto INTEGER(20) NOT NULL,
  Encomenda_Cod_Encomenda INTEGER(20) NOT NULL,
  PRIMARY KEY(Produto_idProduto, Encomenda_Cod_Encomenda),
  FOREIGN KEY(Produto_idProduto) REFERENCES Produto(idProduto),
  FOREIGN KEY(Encomenda_Cod_Encomenda) REFERENCES Encomenda(Cod_Encomenda)
);

INSERT INTO Produto 
VALUES (001,'PÃO','PÃES E ROSCAS','4.99KG','PÃO INTEGRAL 400g');
INSERT INTO Produto 
VALUES (002,'BOLO','BOLOS E TORTAS','8.99','Bolo cenoura chocolate');
INSERT INTO Produto
VALUES (003,'COXINHA','SALGADOS','21.00KG','Frango, Frango e Milho, Frango com Catupiry');
INSERT INTO Produto
VALUES (004,'BRIGADEIRO','DOCES','2,99','Brigadeiro de Chocolate, Beijinho');
INSERT INTO Produto
VALUES (005,'SONHO','PÃES E ROSCAS','3.99','Sonho de Creme, de Doce de Leite, de Chocolate');


INSERT INTO Usuario (idUser, CPF, Nome, Telefone, NomeUser , Senha, Email, Endereco)
VALUES (NULL, 05531334117 ,'Ivanildo Moreira', 33584839 , 'ivanildo.admin' , '123456','ivanildo1763@gmail.com','RUA 81 CASA 7');
INSERT INTO Usuario (idUser, CPF, Nome, Telefone, NomeUser , Senha, Email, Endereco)
VALUES (NULL, 23145436768 ,'Ana Oliveira', 33583456, 'ana.oliveira' ,'123456','ana_oliv@gmail.com','RUA 10 CASA 5');
INSERT INTO Usuario (idUser, CPF, Nome, Telefone, NomeUser , Senha, Email, Endereco)
VALUES (NULL, 34567823498 ,'Lucas Silva', 33213345 , 'lucas.silva' , '123456','lucassilva@gmail.com','RUA 17 CASA 1');
INSERT INTO Usuario (idUser, CPF, Nome, Telefone, NomeUser , Senha, Email, Endereco)
VALUES (NULL, 78954367890 ,'Andre Araujo', 87567890 , 'araujo.andre' , '123456','araujoandre@gmail.com','RUA 30 CASA 1');
INSERT INTO Usuario (idUser, CPF, Nome, Telefone, NomeUser , Senha, Email, Endereco)
VALUES (NULL, 82405808635 ,'Kamila Borges', 98546789 , 'kamila.admin' , '123456','kamila@gmail.com','CASA 1 CONJUNTO');

-- CADASTROS DE TESTES -----
select * from usuario;
insert into usuario (idUser, CPF, Nome, Telefone, NomeUser, Senha, Email, Endereco)
values (null, 215864789531, 'Marcos Motta', 32658975, 'motta.marcos', 123456, 'marcos@gmail.com', 'RUA 20 CASA 15');

insert into usuario (idUser, CPF, Nome, Telefone, NomeUser, Senha, Email, Endereco)
values (null, 26589475184, 'Marcos Motta', 32658975, 'guigui', 123456, 'marcos@gmail.com', 'RUA 20 CASA 15');
 
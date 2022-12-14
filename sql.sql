CREATE DATABASE PW2_JPA;

USE PW2_JPA

CREATE TABLE TBL_TELEFONE(
ID_TELEFONE BIGINT PRIMARY KEY IDENTITY,
TX_AREA VARCHAR(2)NOT NULL,
TX_NUMERO VARCHAR(15)NOT NULL,
);

CREATE TABLE TBL_PROPRIETARIO(
ID_PROPRIETARIO BIGINT PRIMARY KEY IDENTITY,
TX_NOME VARCHAR(50)NOT NULL,
TP_PROPRIETARIO INT NOT NULL,
TX_DOCUMENTO VARCHAR(15)NOT NULL,
TX_EMAIL VARCHAR(30)NOT NULL,
ID_TELEFONE BIGINT NOT NULL,
FOREIGN KEY (ID_TELEFONE) REFERENCES TBL_TELEFONE(ID_TELEFONE));

CREATE TABLE TBL_VEICULO(
ID_VEICULO BIGINT PRIMARY KEY IDENTITY,
TX_FABRICANTE VARCHAR(30)NOT NULL,
TX_MODELO VARCHAR(20)NOT NULL,
NR_ANO_FABRICACAO INT NOT NULL,
NR_ANO_MODELO INT NOT NULL,
VLR_PRECO FLOAT NOT NULL,
ID_PROPRIETARIO BIGINT NOT NULL,
FOREIGN KEY (ID_PROPRIETARIO) REFERENCES TBL_PROPRIETARIO(ID_PROPRIETARIO));

CREATE TABLE TBL_ACESSORIO(
ID_ACESSORIO BIGINT PRIMARY KEY IDENTITY,
TX_DESCRICAO VARCHAR(30)NOT NULL);

CREATE TABLE TBL_REL_VEICULO_ACESSORIO(
ID_VEICULO BIGINT,
ID_ACESSORIO BIGINT,
FOREIGN KEY (ID_VEICULO) REFERENCES TBL_VEICULO(ID_VEICULO),
FOREIGN KEY (ID_ACESSORIO) REFERENCES TBL_ACESSORIO(ID_ACESSORIO));

CREATE TABLE TBL_AGENTE_AUTUADOR(
ID_AGENTE_AUTUADOR BIGINT PRIMARY KEY IDENTITY,
TX_NOME VARCHAR(50)NOT NULL,
TP_AGENTE VARCHAR(8)NOT NULL,
ST_AGENTE INT NOT NULL,
TX_FONE VARCHAR(10)NOT NULL);
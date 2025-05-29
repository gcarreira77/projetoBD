--CREATE DATABASE Dentista
-- GO

USE Dentista
GO

-- Entidade Utilizador
CREATE TABLE Utilizador (
    ID_util INT PRIMARY KEY,
    morada VARCHAR(100),
    cod_postal VARCHAR(10),
    num_contribuinte INT NOT NULL UNIQUE,
    passwd VARCHAR(15) NOT NULL,
    data_nasc DATE NOT NULL CHECK (data_nasc < GETDATE()),
    telemovel VARCHAR(9) CHECK (LEN(telemovel) = 9),
	nome VARCHAR(100) NOT NULL
);

-- Subclasses de Utilizador
CREATE TABLE Medico (
    ID_util INT PRIMARY KEY,
    especialidade VARCHAR(100),
    FOREIGN KEY (ID_util) REFERENCES Utilizador(ID_util)
);

CREATE TABLE Enfermeiro (
    ID_util INT PRIMARY KEY,
    FOREIGN KEY (ID_util) REFERENCES Utilizador(ID_util)
);

CREATE TABLE Rececionista (
    ID_util INT PRIMARY KEY,
    FOREIGN KEY (ID_util) REFERENCES Utilizador(ID_util)
);

--Entidade Paciente
CREATE TABLE Paciente (
    num_paciente INT PRIMARY KEY,
    morada VARCHAR(100),
    nif INT,
    data_nasc DATE NOT NULL CHECK (data_nasc < GETDATE()),
    nome VARCHAR(100) NOT NULL,
    cod_postal VARCHAR(10),
    telemovel VARCHAR(9) CHECK (LEN(telemovel) = 9),
    historial VARCHAR(500)
);

--Entidade Consulta
CREATE TABLE Consulta (
    num_paciente INT,
    data DATE NOT NULL,
    hora TIME NOT NULL,
    tratamentos VARCHAR(500),
    PRIMARY KEY (num_paciente, data, hora),
    FOREIGN KEY (num_paciente) REFERENCES Paciente(num_paciente)
);

-- Entidade Dentes
CREATE TABLE Dentes (
    num_paciente INT,
    num_dente INT,
    estado VARCHAR(50) NOT NULL,
    PRIMARY KEY (num_paciente, num_dente),
    FOREIGN KEY (num_paciente) REFERENCES Paciente(num_paciente)
);

-- Entidade Recibo
CREATE TABLE Recibo (
    num_recibo INT PRIMARY KEY,
    data_rec DATE DEFAULT GETDATE(),
    ID_rececionista INT NOT NULL,
    num_paciente INT NOT NULL,
    data_consulta DATE NOT NULL,
    hora_consulta TIME NOT NULL,
    valor DECIMAL(10,2) CHECK (valor >= 0),
    FOREIGN KEY (ID_rececionista) REFERENCES Rececionista(ID_util),
    FOREIGN KEY (num_paciente, data_consulta, hora_consulta) REFERENCES Consulta(num_paciente, data, hora)
);


-- Entidade Seguradora
CREATE TABLE Seguradora (
    nome VARCHAR(100) PRIMARY KEY,
    email VARCHAR(100)
);

-- Entidade Pagamento
CREATE TABLE Pagamento (
    num_fatura INT PRIMARY KEY,
    pagador VARCHAR(100) NOT NULL,
	num_paciente INT NOT NULL,
    num_recibo INT NOT NULL,
    nome_seguradora VARCHAR(100),
	FOREIGN KEY (num_paciente) REFERENCES Paciente(num_paciente),
    FOREIGN KEY (num_recibo) REFERENCES Recibo(num_recibo),
    FOREIGN KEY (nome_seguradora) REFERENCES Seguradora(nome)
);


-- Entidade Seguros
CREATE TABLE Seguros (
    tipo VARCHAR(100) PRIMARY KEY,
	percentagem DECIMAL(5,2) NOT NULL CHECK (percentagem >= 0 AND percentagem <= 100),
	num_paciente INT NOT NULL,
    nome_seguradora VARCHAR(100) NOT NULL,
	FOREIGN KEY (num_paciente) REFERENCES Paciente(num_paciente),
    FOREIGN KEY (nome_seguradora) REFERENCES Seguradora(nome)
);

-- Relação Medico pratica Consulta
CREATE TABLE Pratica (
    ID_medico INT,
    num_paciente INT,
    data DATE,
    hora TIME,
    PRIMARY KEY (ID_medico, num_paciente, data, hora),
    FOREIGN KEY (ID_medico) REFERENCES Medico(ID_util),
    FOREIGN KEY (num_paciente, data, hora) REFERENCES Consulta(num_paciente, data, hora)
);


-- Relação Enfermeiro assiste Consulta
CREATE TABLE Assiste (
    ID_enfermeiro INT,
    num_paciente INT,
    data DATE,
    hora TIME,
    PRIMARY KEY (ID_enfermeiro, num_paciente, data, hora),
    FOREIGN KEY (ID_enfermeiro) REFERENCES Enfermeiro(ID_util),
    FOREIGN KEY (num_paciente, data, hora) REFERENCES Consulta(num_paciente, data, hora)
);

/* 
DROP TABLE Assiste;
DROP TABLE Pratica;
DROP TABLE Pagamento;
DROP TABLE Seguros;
DROP TABLE Recibo;
DROP TABLE Dentes;
DROP TABLE Consulta;
DROP TABLE Paciente;
DROP TABLE Medico;
DROP TABLE Enfermeiro;
DROP TABLE Rececionista;
DROP TABLE Seguradora;
DROP TABLE Utilizador;
*/




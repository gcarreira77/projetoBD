USE Dentista
GO

-- criar paciente
CREATE OR ALTER PROCEDURE CriarPaciente
    @morada VARCHAR(100),
    @nif INT,
    @data_nasc DATE,
    @nome VARCHAR(100),
    @cod_postal VARCHAR(10),
    @telemovel VARCHAR(9),
    @historial VARCHAR(500)
AS
BEGIN
    DECLARE @num_paciente INT;

    SELECT @num_paciente = ISNULL(MAX(num_paciente), 0) + 1 FROM Paciente;

    INSERT INTO Paciente (num_paciente, morada, nif, data_nasc, nome, cod_postal, telemovel, historial)
    VALUES (@num_paciente, @morada, @nif, @data_nasc, @nome, @cod_postal, @telemovel, @historial);
END;
GO

-- atualizar paciente
CREATE OR ALTER PROCEDURE AtualizarPaciente
    @num_paciente INT,
    @morada VARCHAR(100),
    @cod_postal VARCHAR(10),
    @telemovel VARCHAR(9),
    @historial VARCHAR(500)
AS
BEGIN
    UPDATE Paciente
    SET morada = @morada,
        cod_postal = @cod_postal,
        telemovel = @telemovel,
        historial = @historial
    WHERE num_paciente = @num_paciente;
END;
GO

-- Remover paciente
CREATE or ALTER PROCEDURE RemoverPaciente
    @num_paciente INT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM Consulta WHERE num_paciente = @num_paciente
        UNION
        SELECT 1 FROM Dentes WHERE num_paciente = @num_paciente
        UNION
        SELECT 1 FROM Recibo WHERE num_paciente = @num_paciente
        UNION
        SELECT 1 FROM Pagamento WHERE num_paciente = @num_paciente
        UNION
        SELECT 1 FROM Seguros WHERE num_paciente = @num_paciente
    )
    BEGIN
        PRINT 'Não é possível remover o paciente: existem registos associados.'
        RETURN
    END

    DELETE FROM Paciente WHERE num_paciente = @num_paciente
END;

GO

-- criar consulta
CREATE OR ALTER PROCEDURE CriarConsulta
    @num_paciente INT,
    @data DATE,
    @hora TIME,
    @tratamentos VARCHAR(500),
    @id_medico INT,
    @id_enfermeiro INT = NULL
AS
BEGIN
    INSERT INTO Consulta (num_paciente, data, hora, tratamentos)
    VALUES (@num_paciente, @data, @hora, @tratamentos);

    INSERT INTO Pratica (ID_medico, num_paciente, data, hora)
    VALUES (@id_medico, @num_paciente, @data, @hora);

    IF @id_enfermeiro IS NOT NULL
    BEGIN
        INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora)
        VALUES (@id_enfermeiro, @num_paciente, @data, @hora);
    END
END;
GO

-- atualizar consulta
CREATE OR ALTER PROCEDURE AtualizarConsulta
    @num_paciente INT,
    @data DATE,
    @hora TIME,
    @novos_tratamentos VARCHAR(500)
AS
BEGIN
    UPDATE Consulta
    SET tratamentos = @novos_tratamentos
    WHERE num_paciente = @num_paciente AND data = @data AND hora = @hora;
END;
GO

-- eliminar consulta
CREATE OR ALTER PROCEDURE EliminarConsulta
    @num_paciente INT,
    @data DATE,
    @hora TIME
AS
BEGIN
    DELETE FROM Pagamento WHERE num_paciente = @num_paciente AND num_recibo IN (
        SELECT num_recibo FROM Recibo WHERE num_paciente = @num_paciente AND data_consulta = @data AND hora_consulta = @hora
    );

    DELETE FROM Recibo WHERE num_paciente = @num_paciente AND data_consulta = @data AND hora_consulta = @hora;

    DELETE FROM Pratica WHERE num_paciente = @num_paciente AND data = @data AND hora = @hora;
    DELETE FROM Assiste WHERE num_paciente = @num_paciente AND data = @data AND hora = @hora;

    DELETE FROM Consulta WHERE num_paciente = @num_paciente AND data = @data AND hora = @hora;
END;
GO

-- cria utilizadores
CREATE OR ALTER PROCEDURE CriarUtilizador
    @morada VARCHAR(100),
    @cod_postal VARCHAR(10),
    @num_contribuinte INT,
    @passwd VARCHAR(15),
    @data_nasc DATE,
    @telemovel VARCHAR(9),
    @nome VARCHAR(100)
AS
BEGIN
    DECLARE @id_util INT;

    SELECT @id_util = ISNULL(MAX(ID_util), 0) + 1 FROM Utilizador;

    INSERT INTO Utilizador (ID_util, morada, cod_postal, num_contribuinte, passwd, data_nasc, telemovel, nome)
    VALUES (@id_util, @morada, @cod_postal, @num_contribuinte, @passwd, @data_nasc, @telemovel, @nome);

    SELECT @id_util AS NovoID;
END;
GO


-- editar utilizador
CREATE OR ALTER PROCEDURE AtualizarUtilizador
    @ID_util INT,
    @morada VARCHAR(100),
    @cod_postal VARCHAR(10),
    @num_contribuinte INT,
    @passwd VARCHAR(15),
    @data_nasc DATE,
    @telemovel VARCHAR(9),
    @nome VARCHAR(100)
AS
BEGIN
    UPDATE Utilizador
    SET morada = @morada,
        cod_postal = @cod_postal,
        num_contribuinte = @num_contribuinte,
        passwd = @passwd,
        data_nasc = @data_nasc,
        telemovel = @telemovel,
        nome = @nome
    WHERE ID_util = @ID_util;
END;
GO

--eliminar utilizador
CREATE OR ALTER PROCEDURE RemoverUtilizador 
    @ID_util INT
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM Pratica WHERE ID_medico = @ID_util
        UNION
        SELECT 1 FROM Assiste WHERE ID_enfermeiro = @ID_util
        UNION
        SELECT 1 FROM Recibo WHERE ID_rececionista = @ID_util
    )
    BEGIN
        PRINT 'Não é possível remover o utilizador: associado a outras tabelas (Pratica, Assiste ou Recibo).'
        RETURN
    END

    DELETE FROM Medico WHERE ID_util = @ID_util;
    DELETE FROM Enfermeiro WHERE ID_util = @ID_util;
    DELETE FROM Rececionista WHERE ID_util = @ID_util;
	DELETE FROM Utilizador WHERE ID_util = @ID_util;
END;
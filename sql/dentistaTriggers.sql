Use Dentista
GO

-- gera recibo automaticamente para uma consulta
CREATE OR ALTER TRIGGER trg_gerar_recibo_apos_consulta
ON Consulta
AFTER INSERT
AS
BEGIN
    DECLARE @num_paciente INT, @data DATE, @hora TIME;
    SELECT TOP 1 @num_paciente = num_paciente, @data = data, @hora = hora FROM inserted;

    DECLARE @id_rececionista INT;
    SELECT TOP 1 @id_rececionista = ID_util FROM Rececionista ORDER BY NEWID();

    DECLARE @novo_num_recibo INT;
    SELECT @novo_num_recibo = ISNULL(MAX(num_recibo), 0) + 1 FROM Recibo;

    DECLARE @valor DECIMAL(10,2) = 60.00;

    INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor)
    VALUES (@novo_num_recibo, GETDATE(), @id_rececionista, @num_paciente, @data, @hora, @valor);

    DECLARE @nome_seguradora VARCHAR(100), @pagador VARCHAR(100);
    SELECT TOP 1 @nome_seguradora = nome_seguradora FROM Seguros WHERE num_paciente = @num_paciente;

    IF @nome_seguradora IS NOT NULL
    BEGIN
        SET @pagador = @nome_seguradora;
    END
    ELSE
    BEGIN
        SELECT @pagador = nome FROM Paciente WHERE num_paciente = @num_paciente;
    END

    INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora)
    VALUES (@novo_num_recibo, @pagador, @num_paciente, @novo_num_recibo, @nome_seguradora);
END;
GO

-- bloquear seguro infantil para pacientes > 18
CREATE OR ALTER TRIGGER trg_VerificarIdadeSeguroInfantil
ON Seguros
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @tipo VARCHAR(100),
            @num_paciente INT,
            @data_nasc DATE,
            @idade INT,
            @percentagem DECIMAL(5,2),
            @nome_seguradora VARCHAR(100);

    SELECT 
        @tipo = tipo,
        @num_paciente = num_paciente,
        @percentagem = percentagem,
        @nome_seguradora = nome_seguradora
    FROM inserted;

    SELECT @data_nasc = data_nasc FROM Paciente WHERE num_paciente = @num_paciente;

    IF @data_nasc IS NULL
    BEGIN
        RAISERROR('Paciente não encontrado.', 16, 1);
        RETURN;
    END

    SET @idade = dbo.ObterIdade(@data_nasc);

    IF @tipo = 'Seguro Infantil' AND @idade >= 18
    BEGIN
        RAISERROR('Seguro Infantil apenas pode ser atribuído a pacientes com menos de 18 anos.', 16, 1);
        RETURN;
    END

    -- Inserir se passou a validação
    INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora)
    SELECT tipo, percentagem, num_paciente, nome_seguradora FROM inserted;
END;
GO
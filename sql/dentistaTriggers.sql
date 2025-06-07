Use Dentista
GO

-- gera recibo automaticamente para uma consulta
CREATE OR ALTER TRIGGER trg_gerar_recibo_apos_consulta
ON Consulta
AFTER INSERT
AS
BEGIN
    DECLARE @id_rececionista INT;
    SELECT TOP 1 @id_rececionista = ID_util FROM Rececionista ORDER BY NEWID();

    DECLARE @max_recibo INT;
    SELECT @max_recibo = ISNULL(MAX(num_recibo), 0) FROM Recibo;

    ;WITH NovasConsultas AS (
        SELECT 
            ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS RowNum,
            num_paciente, data, hora
        FROM inserted
    )
    INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor)
    SELECT 
        @max_recibo + RowNum,
        GETDATE(),
        @id_rececionista,
        num_paciente,
        data,
        hora,
        60.00
    FROM NovasConsultas;

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
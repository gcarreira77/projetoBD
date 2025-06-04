Use Dentista
GO
-- calcula idade do paciente
CREATE OR ALTER FUNCTION dbo.ObterIdade(@data_nasc DATE)
RETURNS INT
AS
BEGIN
    DECLARE @idade INT;
    SET @idade = DATEDIFF(YEAR, @data_nasc, GETDATE());

    IF DATEADD(YEAR, @idade, @data_nasc) > GETDATE()
        SET @idade = @idade - 1;

    RETURN @idade;
END;
GO
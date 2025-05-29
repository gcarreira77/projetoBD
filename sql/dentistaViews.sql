Use Dentista
GO


-- View com informação das consultas, sobre paciente, medico, tratamentos, enfermeiros
CREATE VIEW PacienteConsultas AS
SELECT P.num_paciente, P.nome AS paciente_nome, C.data, C.hora, C.tratamentos, U.nome AS medico_nome, M.especialidade, UE.nome AS enfermeiro_nome
FROM Paciente P
JOIN Consulta C ON P.num_paciente = C.num_paciente
JOIN Pratica PR ON C.num_paciente = PR.num_paciente AND C.data = PR.data AND C.hora = PR.hora
JOIN Medico M ON PR.ID_medico = M.ID_util
JOIN Utilizador U ON M.ID_util = U.ID_util
LEFT JOIN Assiste A ON C.num_paciente = A.num_paciente AND C.data = A.data AND C.hora = A.hora
LEFT JOIN Enfermeiro E ON A.ID_enfermeiro = E.ID_util
LEFT JOIN Utilizador UE ON E.ID_util = UE.ID_util;

GO

-- View com informaçoes de recibo
CREATE VIEW DetalhesRecibos AS
SELECT R.num_recibo, R.data_rec, R.valor, P.nome AS paciente_nome, U.nome AS rececionista_nome, C.data AS data_consulta, C.hora AS hora_consulta
FROM Recibo R
JOIN Paciente P ON R.num_paciente = P.num_paciente
JOIN Rececionista RE ON R.ID_rececionista = RE.ID_util
JOIN Utilizador U ON RE.ID_util = U.ID_util
JOIN Consulta C ON R.num_paciente = C.num_paciente AND R.data_consulta = C.data AND R.hora_consulta = C.hora;

GO

-- View com informaçoes sobre pacientes com seguros
CREATE VIEW SegurosPacientes AS
SELECT P.num_paciente, P.nome AS paciente_nome, S.nome_seguradora, S.tipo, S.percentagem
FROM Paciente P
JOIN Seguros S ON P.num_paciente = S.num_paciente;

Go

-- View com informaçoes dos dentes de cada paciente
CREATE VIEW DentesEstado AS
SELECT P.num_paciente, P.nome AS paciente_nome, D.num_dente, D.estado
FROM Paciente P
JOIN Dentes D ON P.num_paciente = D.num_paciente;

GO

-- View com informaçao de todos os funcionarios
CREATE VIEW ListaFuncionarios AS
SELECT U.ID_util, U.nome, U.num_contribuinte AS NIF, U.telemovel, U.morada, U.cod_postal, U.data_nasc,
CASE    
	WHEN M.ID_util IS NOT NULL THEN 'Médico'
    WHEN E.ID_util IS NOT NULL THEN 'Enfermeiro'
	WHEN R.ID_util IS NOT NULL THEN 'Rececionista'
ELSE 'Outro' END AS cargo, M.especialidade
FROM Utilizador U
LEFT JOIN Medico M ON U.ID_util = M.ID_util
LEFT JOIN Enfermeiro E ON U.ID_util = E.ID_util
LEFT JOIN Rececionista R ON U.ID_util = R.ID_util;

GO



/**
DROP vIEW PacienteConsultas;
DROP vIEW DetalhesRecibos;
DROP vIEW SegurosPacientes;
DROP VIEW DentesEstado;
DROP VIEW ListaFuncionarios

**/

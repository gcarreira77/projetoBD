USE Dentista
GO

CREATE OR ALTER VIEW vw_Consulta AS
SELECT 
    c.data AS DataConsulta,
    c.hora AS HoraConsulta,           

    p.num_paciente AS ID_Paciente,
    p.nome AS Nome_Paciente,
    
    m.ID_util AS ID_Medico,
    u_med.nome AS Nome_Medico,
    m.especialidade AS Especialidade_Medico,

    e.ID_util AS ID_Enfermeiro,
    u_enf.nome AS Nome_Enfermeiro

FROM Consulta c
JOIN Paciente p ON c.num_paciente = p.num_paciente

LEFT JOIN Pratica pr ON c.num_paciente = pr.num_paciente AND c.data = pr.data AND c.hora = pr.hora
LEFT JOIN Medico m ON pr.ID_medico = m.ID_util
LEFT JOIN Utilizador u_med ON m.ID_util = u_med.ID_util

LEFT JOIN Assiste a ON c.num_paciente = a.num_paciente AND c.data = a.data AND c.hora = a.hora
LEFT JOIN Enfermeiro e ON a.ID_enfermeiro = e.ID_util
LEFT JOIN Utilizador u_enf ON e.ID_util = u_enf.ID_util;

GO
CREATE OR ALTER VIEW vw_UtilizadoresComTipo AS
SELECT 
    u.ID_util,
    u.morada,
    u.cod_postal,
    u.num_contribuinte,
    u.data_nasc,
    u.telemovel,
    u.nome,
    CASE 
        WHEN m.ID_util IS NOT NULL THEN 'Médico'
        WHEN e.ID_util IS NOT NULL THEN 'Enfermeiro'
        WHEN r.ID_util IS NOT NULL THEN 'Rececionista'
        ELSE ''
    END AS tipo,
    m.especialidade
FROM Utilizador u
LEFT JOIN Medico m ON u.ID_util = m.ID_util
LEFT JOIN Enfermeiro e ON u.ID_util = e.ID_util
LEFT JOIN Rececionista r ON u.ID_util = r.ID_util;

/**
DROP vw_Consulta;
DROP vw_UtilizadoresComTipo

**/

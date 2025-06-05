Use Dentista
GO


CREATE VIEW vw_Consulta AS
SELECT 
    c.data AS DataConsulta,
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



/**
DROP vw_Consulta;


**/

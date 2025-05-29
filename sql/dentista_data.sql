USE Dentista;
GO

/*
DELETE FROM Pratica;
DELETE FROM Assiste;
DELETE FROM Pagamento;
DELETE FROM Recibo;
DELETE FROM Consulta;
DELETE FROM Dentes;
DELETE FROM Seguros;
DELETE FROM Medico;
DELETE FROM Enfermeiro;
DELETE FROM Rececionista;
DELETE FROM Paciente;
DELETE FROM Seguradora;
DELETE FROM Utilizador;
*/

-- Insert patients
DECLARE @i INT = 1;

WHILE @i <= 50
BEGIN
    INSERT INTO Paciente (
        num_paciente,
        morada,
        nif,
        data_nasc,
        nome,
        cod_postal,
        telemovel,
        historial
    )
    VALUES (
        @i,
        CONCAT('Rua Exemplo ', @i),
        200000000 + @i, 
        DATEADD(YEAR, -20 - (@i % 30), GETDATE()), 
        CONCAT('Paciente ', @i),
        CONCAT('1000-', RIGHT('000' + CAST(@i AS VARCHAR), 4)), 
        CONCAT('9', RIGHT('00000000' + CAST(@i AS VARCHAR), 8)), 
        CONCAT('Historial do paciente ', @i)
    );

    SET @i += 1;
END;

-- Insert Doctors
INSERT INTO Medico (ID_util, especialidade) VALUES (100, 'Especialidade Geral');
INSERT INTO Medico (ID_util, especialidade) VALUES (101, 'Especialidade Geral');
INSERT INTO Medico (ID_util, especialidade) VALUES (102, 'Especialidade Geral');
INSERT INTO Medico (ID_util, especialidade) VALUES (103, 'Especialidade Geral');
INSERT INTO Medico (ID_util, especialidade) VALUES (104, 'Especialidade Geral');

-- Insert Nurses
INSERT INTO Enfermeiro (ID_util) VALUES (200);
INSERT INTO Enfermeiro (ID_util) VALUES (201);

-- Insert Receptionists
INSERT INTO Rececionista (ID_util) VALUES (300);
INSERT INTO Rececionista (ID_util) VALUES (301);

-- Insert Insurance Companies
INSERT INTO Seguradora (nome, email) VALUES ('SaudeMais', 'saudemais@example.com');
INSERT INTO Seguradora (nome, email) VALUES ('SeguroDental', 'segurodental@example.com');
INSERT INTO Seguradora (nome, email) VALUES ('CriançaProtegida', 'criançaprotegida@example.com');
INSERT INTO Seguradora (nome, email) VALUES ('SemPacientes', 'sempacientes@example.com');

-- Insert Insurance Types
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 1, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 2, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 3, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 4, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 6, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 7, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 8, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 9, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 11, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 12, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 13, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 14, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 16, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 17, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 18, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 19, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 21, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 22, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 23, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 24, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 26, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 27, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 28, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 29, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 31, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 32, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 33, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 34, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 36, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 37, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 38, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 39, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 41, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Infantil', 100.0, 42, 'SeguroDental');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 43, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 44, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Aparelho Dentário', 50.0, 46, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 47, 'SaudeMais');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 48, 'CriançaProtegida');
INSERT INTO Seguros (tipo, percentagem, num_paciente, nome_seguradora) VALUES ('Limpeza', 80.0, 49, 'SeguroDental');

-- Insert Appointments, Payments, Receipts, and Tooth States

-- Appointment 1 for Patient 16
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (16, '2025-01-24', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 16, '2025-01-24', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 16, '2025-01-24', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1000, '2025-01-24', 301, 16, '2025-01-24', '09:00:00', 83);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2000, 'Paciente 16', 16, 1000, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (16, 10, 'Cariado');

-- Appointment 2 for Patient 47
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (47, '2025-02-15', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 47, '2025-02-15', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 47, '2025-02-15', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1001, '2025-02-15', 301, 47, '2025-02-15', '10:00:00', 47);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2001, 'Paciente 47', 47, 1001, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (47, 24, 'Bom');

-- Appointment 3 for Patient 13
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (13, '2024-12-09', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 13, '2024-12-09', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 13, '2024-12-09', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1002, '2024-12-09', 300, 13, '2024-12-09', '11:00:00', 52);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2002, 'Paciente 13', 13, 1002, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (13, 27, 'Bom');

-- Appointment 4 for Patient 13
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (13, '2024-12-25', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 13, '2024-12-25', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 13, '2024-12-25', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1003, '2024-12-25', 300, 13, '2024-12-25', '12:00:00', 81);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2003, 'Paciente 13', 13, 1003, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (13, 15, 'Cariado');

-- Appointment 5 for Patient 31
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (31, '2024-12-06', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 31, '2024-12-06', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 31, '2024-12-06', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1004, '2024-12-06', 300, 31, '2024-12-06', '13:00:00', 141);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2004, 'Paciente 31', 31, 1004, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (31, 25, 'Bom');

-- Appointment 6 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2025-01-03', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 33, '2025-01-03', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 33, '2025-01-03', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1005, '2025-01-03', 301, 33, '2025-01-03', '14:00:00', 177);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2005, 'Paciente 33', 33, 1005, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 25, 'Bom');

-- Appointment 7 for Patient 26
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (26, '2024-12-25', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 26, '2024-12-25', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 26, '2024-12-25', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1006, '2024-12-25', 301, 26, '2024-12-25', '15:00:00', 163);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2006, 'Paciente 26', 26, 1006, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (26, 13, 'Cariado');

-- Appointment 8 for Patient 25
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (25, '2025-03-17', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 25, '2025-03-17', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 25, '2025-03-17', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1007, '2025-03-17', 301, 25, '2025-03-17', '16:00:00', 119);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2007, 'Paciente 25', 25, 1007, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (25, 11, 'Bom');

-- Appointment 9 for Patient 3
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (3, '2025-03-11', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 3, '2025-03-11', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 3, '2025-03-11', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1008, '2025-03-11', 300, 3, '2025-03-11', '17:00:00', 150);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2008, 'Paciente 3', 3, 1008, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (3, 18, 'Bom');

-- Appointment 10 for Patient 35
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (35, '2024-12-11', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 35, '2024-12-11', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 35, '2024-12-11', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1009, '2024-12-11', 300, 35, '2024-12-11', '09:00:00', 159);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2009, 'Paciente 35', 35, 1009, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (35, 9, 'Cariado');

-- Appointment 11 for Patient 12
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (12, '2025-04-30', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 12, '2025-04-30', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 12, '2025-04-30', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1010, '2025-04-30', 300, 12, '2025-04-30', '10:00:00', 96);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2010, 'Paciente 12', 12, 1010, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (12, 19, 'Bom');

-- Appointment 12 for Patient 2
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (2, '2025-03-20', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 2, '2025-03-20', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 2, '2025-03-20', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1011, '2025-03-20', 300, 2, '2025-03-20', '11:00:00', 133);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2011, 'Paciente 2', 2, 1011, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (2, 20, 'Bom');

-- Appointment 13 for Patient 41
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (41, '2025-04-23', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 41, '2025-04-23', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 41, '2025-04-23', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1012, '2025-04-23', 301, 41, '2025-04-23', '12:00:00', 152);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2012, 'Paciente 41', 41, 1012, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (41, 10, 'Cariado');

-- Appointment 14 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2025-02-22', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 33, '2025-02-22', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 33, '2025-02-22', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1013, '2025-02-22', 300, 33, '2025-02-22', '13:00:00', 188);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2013, 'Paciente 33', 33, 1013, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 5, 'Bom');

-- Appointment 15 for Patient 6
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (6, '2024-11-30', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 6, '2024-11-30', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 6, '2024-11-30', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1014, '2024-11-30', 301, 6, '2024-11-30', '14:00:00', 55);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2014, 'Paciente 6', 6, 1014, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (6, 32, 'Bom');

-- Appointment 16 for Patient 16
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (16, '2024-12-18', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 16, '2024-12-18', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 16, '2024-12-18', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1015, '2024-12-18', 300, 16, '2024-12-18', '15:00:00', 86);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2015, 'Paciente 16', 16, 1015, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (16, 1, 'Cariado');

-- Appointment 17 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2025-01-20', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 33, '2025-01-20', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 33, '2025-01-20', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1016, '2025-01-20', 300, 33, '2025-01-20', '16:00:00', 61);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2016, 'Paciente 33', 33, 1016, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 16, 'Bom');

-- Appointment 18 for Patient 31
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (31, '2025-04-21', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 31, '2025-04-21', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 31, '2025-04-21', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1017, '2025-04-21', 300, 31, '2025-04-21', '17:00:00', 188);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2017, 'Paciente 31', 31, 1017, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (31, 21, 'Bom');

-- Appointment 19 for Patient 17
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (17, '2025-02-22', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 17, '2025-02-22', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 17, '2025-02-22', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1018, '2025-02-22', 301, 17, '2025-02-22', '09:00:00', 139);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2018, 'Paciente 17', 17, 1018, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (17, 3, 'Cariado');

-- Appointment 20 for Patient 1
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (1, '2025-01-08', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 1, '2025-01-08', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 1, '2025-01-08', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1019, '2025-01-08', 301, 1, '2025-01-08', '10:00:00', 103);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2019, 'Paciente 1', 1, 1019, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (1, 25, 'Bom');

-- Appointment 21 for Patient 35
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (35, '2025-01-07', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 35, '2025-01-07', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 35, '2025-01-07', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1020, '2025-01-07', 301, 35, '2025-01-07', '11:00:00', 156);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2020, 'Paciente 35', 35, 1020, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (35, 23, 'Bom');

-- Appointment 22 for Patient 42
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (42, '2025-05-23', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 42, '2025-05-23', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 42, '2025-05-23', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1021, '2025-05-23', 301, 42, '2025-05-23', '12:00:00', 84);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2021, 'Paciente 42', 42, 1021, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (42, 10, 'Cariado');

-- Appointment 23 for Patient 8
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (8, '2025-03-18', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 8, '2025-03-18', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 8, '2025-03-18', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1022, '2025-03-18', 300, 8, '2025-03-18', '13:00:00', 158);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2022, 'Paciente 8', 8, 1022, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (8, 30, 'Bom');

-- Appointment 24 for Patient 39
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (39, '2025-05-03', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 39, '2025-05-03', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 39, '2025-05-03', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1023, '2025-05-03', 301, 39, '2025-05-03', '14:00:00', 178);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2023, 'Paciente 39', 39, 1023, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (39, 24, 'Bom');

-- Appointment 25 for Patient 11
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (11, '2025-05-24', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 11, '2025-05-24', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 11, '2025-05-24', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1024, '2025-05-24', 301, 11, '2025-05-24', '15:00:00', 106);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2024, 'Paciente 11', 11, 1024, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (11, 20, 'Cariado');

-- Appointment 26 for Patient 14
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (14, '2025-05-20', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 14, '2025-05-20', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 14, '2025-05-20', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1025, '2025-05-20', 301, 14, '2025-05-20', '16:00:00', 62);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2025, 'Paciente 14', 14, 1025, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (14, 32, 'Bom');

-- Appointment 27 for Patient 31
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (31, '2024-12-31', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 31, '2024-12-31', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 31, '2024-12-31', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1026, '2024-12-31', 301, 31, '2024-12-31', '17:00:00', 53);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2026, 'Paciente 31', 31, 1026, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (31, 19, 'Bom');

-- Appointment 28 for Patient 5
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (5, '2025-05-11', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 5, '2025-05-11', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 5, '2025-05-11', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1027, '2025-05-11', 301, 5, '2025-05-11', '09:00:00', 130);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2027, 'Paciente 5', 5, 1027, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (5, 13, 'Cariado');

-- Appointment 29 for Patient 1
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (1, '2025-01-24', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 1, '2025-01-24', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 1, '2025-01-24', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1028, '2025-01-24', 301, 1, '2025-01-24', '10:00:00', 92);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2028, 'Paciente 1', 1, 1028, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (1, 8, 'Bom');

-- Appointment 30 for Patient 34
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (34, '2025-05-01', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 34, '2025-05-01', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 34, '2025-05-01', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1029, '2025-05-01', 300, 34, '2025-05-01', '11:00:00', 118);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2029, 'Paciente 34', 34, 1029, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (34, 17, 'Bom');

-- Appointment 31 for Patient 44
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (44, '2025-05-27', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 44, '2025-05-27', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 44, '2025-05-27', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1030, '2025-05-27', 301, 44, '2025-05-27', '12:00:00', 153);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2030, 'Paciente 44', 44, 1030, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (44, 26, 'Cariado');

-- Appointment 32 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2025-01-12', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 33, '2025-01-12', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 33, '2025-01-12', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1031, '2025-01-12', 301, 33, '2025-01-12', '13:00:00', 96);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2031, 'Paciente 33', 33, 1031, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 31, 'Bom');

-- Appointment 33 for Patient 35
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (35, '2025-05-29', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 35, '2025-05-29', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 35, '2025-05-29', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1032, '2025-05-29', 301, 35, '2025-05-29', '14:00:00', 115);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2032, 'Paciente 35', 35, 1032, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (35, 7, 'Bom');

-- Appointment 34 for Patient 44
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (44, '2025-03-03', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 44, '2025-03-03', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 44, '2025-03-03', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1033, '2025-03-03', 301, 44, '2025-03-03', '15:00:00', 129);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2033, 'Paciente 44', 44, 1033, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (44, 26, 'Cariado');

-- Appointment 35 for Patient 42
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (42, '2025-01-13', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 42, '2025-01-13', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 42, '2025-01-13', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1034, '2025-01-13', 300, 42, '2025-01-13', '16:00:00', 100);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2034, 'Paciente 42', 42, 1034, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (42, 8, 'Bom');

-- Appointment 36 for Patient 13
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (13, '2025-02-09', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 13, '2025-02-09', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 13, '2025-02-09', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1035, '2025-02-09', 300, 13, '2025-02-09', '17:00:00', 195);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2035, 'Paciente 13', 13, 1035, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (13, 10, 'Bom');

-- Appointment 37 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2024-12-07', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 33, '2024-12-07', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 33, '2024-12-07', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1036, '2024-12-07', 301, 33, '2024-12-07', '09:00:00', 156);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2036, 'Paciente 33', 33, 1036, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 20, 'Cariado');

-- Appointment 38 for Patient 34
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (34, '2025-02-03', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 34, '2025-02-03', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 34, '2025-02-03', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1037, '2025-02-03', 301, 34, '2025-02-03', '10:00:00', 148);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2037, 'Paciente 34', 34, 1037, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (34, 5, 'Bom');

-- Appointment 39 for Patient 13
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (13, '2025-04-25', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 13, '2025-04-25', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 13, '2025-04-25', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1038, '2025-04-25', 300, 13, '2025-04-25', '11:00:00', 157);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2038, 'Paciente 13', 13, 1038, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (13, 2, 'Bom');

-- Appointment 40 for Patient 2
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (2, '2024-12-04', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 2, '2024-12-04', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 2, '2024-12-04', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1039, '2024-12-04', 300, 2, '2024-12-04', '12:00:00', 193);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2039, 'Paciente 2', 2, 1039, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (2, 9, 'Cariado');

-- Appointment 41 for Patient 11
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (11, '2025-03-11', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 11, '2025-03-11', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 11, '2025-03-11', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1040, '2025-03-11', 301, 11, '2025-03-11', '13:00:00', 113);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2040, 'Paciente 11', 11, 1040, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (11, 2, 'Bom');

-- Appointment 42 for Patient 17
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (17, '2025-03-18', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 17, '2025-03-18', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 17, '2025-03-18', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1041, '2025-03-18', 301, 17, '2025-03-18', '14:00:00', 36);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2041, 'Paciente 17', 17, 1041, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (17, 19, 'Bom');

-- Appointment 43 for Patient 1
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (1, '2025-02-21', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 1, '2025-02-21', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 1, '2025-02-21', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1042, '2025-02-21', 301, 1, '2025-02-21', '15:00:00', 85);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2042, 'Paciente 1', 1, 1042, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (1, 7, 'Cariado');

-- Appointment 44 for Patient 42
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (42, '2025-04-19', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 42, '2025-04-19', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 42, '2025-04-19', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1043, '2025-04-19', 301, 42, '2025-04-19', '16:00:00', 79);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2043, 'Paciente 42', 42, 1043, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (42, 7, 'Bom');

-- Appointment 45 for Patient 30
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (30, '2024-12-25', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 30, '2024-12-25', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 30, '2024-12-25', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1044, '2024-12-25', 300, 30, '2024-12-25', '17:00:00', 192);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2044, 'Paciente 30', 30, 1044, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (30, 24, 'Bom');

-- Appointment 46 for Patient 3
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (3, '2024-12-20', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 3, '2024-12-20', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 3, '2024-12-20', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1045, '2024-12-20', 300, 3, '2024-12-20', '09:00:00', 194);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2045, 'Paciente 3', 3, 1045, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (3, 18, 'Cariado');

-- Appointment 47 for Patient 12
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (12, '2025-04-20', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 12, '2025-04-20', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 12, '2025-04-20', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1046, '2025-04-20', 300, 12, '2025-04-20', '10:00:00', 164);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2046, 'Paciente 12', 12, 1046, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (12, 15, 'Bom');

-- Appointment 48 for Patient 10
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (10, '2025-03-08', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 10, '2025-03-08', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 10, '2025-03-08', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1047, '2025-03-08', 301, 10, '2025-03-08', '11:00:00', 185);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2047, 'Paciente 10', 10, 1047, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (10, 5, 'Bom');

-- Appointment 49 for Patient 40
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (40, '2025-01-11', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 40, '2025-01-11', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 40, '2025-01-11', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1048, '2025-01-11', 301, 40, '2025-01-11', '12:00:00', 193);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2048, 'Paciente 40', 40, 1048, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (40, 4, 'Cariado');

-- Appointment 50 for Patient 23
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (23, '2024-12-07', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 23, '2024-12-07', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 23, '2024-12-07', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1049, '2024-12-07', 300, 23, '2024-12-07', '13:00:00', 87);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2049, 'Paciente 23', 23, 1049, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (23, 31, 'Bom');

-- Appointment 51 for Patient 40
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (40, '2025-04-16', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 40, '2025-04-16', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 40, '2025-04-16', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1050, '2025-04-16', 301, 40, '2025-04-16', '14:00:00', 90);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2050, 'Paciente 40', 40, 1050, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (40, 31, 'Bom');

-- Appointment 52 for Patient 25
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (25, '2025-05-11', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 25, '2025-05-11', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 25, '2025-05-11', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1051, '2025-05-11', 300, 25, '2025-05-11', '15:00:00', 154);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2051, 'Paciente 25', 25, 1051, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (25, 16, 'Cariado');

-- Appointment 53 for Patient 43
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (43, '2025-03-14', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 43, '2025-03-14', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 43, '2025-03-14', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1052, '2025-03-14', 301, 43, '2025-03-14', '16:00:00', 37);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2052, 'Paciente 43', 43, 1052, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (43, 28, 'Bom');

-- Appointment 54 for Patient 36
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (36, '2025-04-16', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 36, '2025-04-16', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 36, '2025-04-16', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1053, '2025-04-16', 300, 36, '2025-04-16', '17:00:00', 36);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2053, 'Paciente 36', 36, 1053, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (36, 22, 'Bom');

-- Appointment 55 for Patient 47
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (47, '2025-05-13', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 47, '2025-05-13', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 47, '2025-05-13', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1054, '2025-05-13', 301, 47, '2025-05-13', '09:00:00', 108);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2054, 'Paciente 47', 47, 1054, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (47, 18, 'Cariado');

-- Appointment 56 for Patient 14
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (14, '2025-02-03', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 14, '2025-02-03', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 14, '2025-02-03', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1055, '2025-02-03', 300, 14, '2025-02-03', '10:00:00', 121);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2055, 'Paciente 14', 14, 1055, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (14, 28, 'Bom');

-- Appointment 57 for Patient 32
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (32, '2025-02-11', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 32, '2025-02-11', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 32, '2025-02-11', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1056, '2025-02-11', 300, 32, '2025-02-11', '11:00:00', 79);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2056, 'Paciente 32', 32, 1056, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (32, 5, 'Bom');

-- Appointment 58 for Patient 49
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (49, '2024-12-09', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 49, '2024-12-09', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 49, '2024-12-09', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1057, '2024-12-09', 300, 49, '2024-12-09', '12:00:00', 32);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2057, 'Paciente 49', 49, 1057, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (49, 8, 'Cariado');

-- Appointment 59 for Patient 7
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (7, '2025-02-26', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 7, '2025-02-26', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 7, '2025-02-26', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1058, '2025-02-26', 301, 7, '2025-02-26', '13:00:00', 145);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2058, 'Paciente 7', 7, 1058, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (7, 23, 'Bom');

-- Appointment 60 for Patient 35
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (35, '2024-12-22', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 35, '2024-12-22', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 35, '2024-12-22', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1059, '2024-12-22', 301, 35, '2024-12-22', '14:00:00', 81);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2059, 'Paciente 35', 35, 1059, NULL);
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (35, 22, 'Bom');

-- Appointment 61 for Patient 21
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (21, '2025-04-17', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 21, '2025-04-17', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 21, '2025-04-17', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1060, '2025-04-17', 300, 21, '2025-04-17', '15:00:00', 193);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2060, 'Paciente 21', 21, 1060, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (21, 29, 'Cariado');

-- Appointment 62 for Patient 48
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (48, '2025-01-03', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 48, '2025-01-03', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 48, '2025-01-03', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1061, '2025-01-03', 301, 48, '2025-01-03', '16:00:00', 90);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2061, 'Paciente 48', 48, 1061, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (48, 32, 'Bom');

-- Appointment 63 for Patient 21
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (21, '2025-02-09', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 21, '2025-02-09', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 21, '2025-02-09', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1062, '2025-02-09', 300, 21, '2025-02-09', '17:00:00', 79);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2062, 'Paciente 21', 21, 1062, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (21, 3, 'Bom');

-- Appointment 64 for Patient 26
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (26, '2024-12-03', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 26, '2024-12-03', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 26, '2024-12-03', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1063, '2024-12-03', 301, 26, '2024-12-03', '09:00:00', 164);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2063, 'Paciente 26', 26, 1063, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (26, 18, 'Cariado');

-- Appointment 65 for Patient 21
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (21, '2025-02-01', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 21, '2025-02-01', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 21, '2025-02-01', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1064, '2025-02-01', 300, 21, '2025-02-01', '10:00:00', 66);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2064, 'Paciente 21', 21, 1064, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (21, 15, 'Bom');

-- Appointment 66 for Patient 33
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (33, '2025-01-28', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 33, '2025-01-28', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 33, '2025-01-28', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1065, '2025-01-28', 300, 33, '2025-01-28', '11:00:00', 178);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2065, 'Paciente 33', 33, 1065, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (33, 14, 'Bom');

-- Appointment 67 for Patient 21
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (21, '2025-03-17', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 21, '2025-03-17', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 21, '2025-03-17', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1066, '2025-03-17', 300, 21, '2025-03-17', '12:00:00', 38);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2066, 'Paciente 21', 21, 1066, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (21, 16, 'Cariado');

-- Appointment 68 for Patient 42
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (42, '2025-03-08', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 42, '2025-03-08', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 42, '2025-03-08', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1067, '2025-03-08', 300, 42, '2025-03-08', '13:00:00', 91);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2067, 'Paciente 42', 42, 1067, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (42, 30, 'Bom');

-- Appointment 69 for Patient 14
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (14, '2025-03-22', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 14, '2025-03-22', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 14, '2025-03-22', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1068, '2025-03-22', 300, 14, '2025-03-22', '14:00:00', 170);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2068, 'Paciente 14', 14, 1068, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (14, 20, 'Bom');

-- Appointment 70 for Patient 38
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (38, '2025-02-07', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 38, '2025-02-07', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 38, '2025-02-07', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1069, '2025-02-07', 301, 38, '2025-02-07', '15:00:00', 128);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2069, 'Paciente 38', 38, 1069, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (38, 16, 'Cariado');

-- Appointment 71 for Patient 4
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (4, '2024-12-10', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (103, 4, '2024-12-10', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 4, '2024-12-10', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1070, '2024-12-10', 300, 4, '2024-12-10', '16:00:00', 188);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2070, 'Paciente 4', 4, 1070, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (4, 1, 'Bom');

-- Appointment 72 for Patient 19
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (19, '2025-04-23', '17:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 19, '2025-04-23', '17:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 19, '2025-04-23', '17:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1071, '2025-04-23', 300, 19, '2025-04-23', '17:00:00', 114);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2071, 'Paciente 19', 19, 1071, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (19, 11, 'Bom');

-- Appointment 73 for Patient 21
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (21, '2025-02-20', '09:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 21, '2025-02-20', '09:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 21, '2025-02-20', '09:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1072, '2025-02-20', 301, 21, '2025-02-20', '09:00:00', 45);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2072, 'Paciente 21', 21, 1072, 'SeguroDental');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (21, 19, 'Cariado');

-- Appointment 74 for Patient 24
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (24, '2025-03-07', '10:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 24, '2025-03-07', '10:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 24, '2025-03-07', '10:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1073, '2025-03-07', 300, 24, '2025-03-07', '10:00:00', 76);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2073, 'Paciente 24', 24, 1073, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (24, 12, 'Bom');

-- Appointment 75 for Patient 23
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (23, '2025-02-20', '11:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 23, '2025-02-20', '11:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 23, '2025-02-20', '11:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1074, '2025-02-20', 301, 23, '2025-02-20', '11:00:00', 186);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2074, 'Paciente 23', 23, 1074, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (23, 2, 'Bom');

-- Appointment 76 for Patient 14
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (14, '2025-05-19', '12:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 14, '2025-05-19', '12:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (200, 14, '2025-05-19', '12:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1075, '2025-05-19', 300, 14, '2025-05-19', '12:00:00', 142);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2075, 'Paciente 14', 14, 1075, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (14, 28, 'Cariado');

-- Appointment 77 for Patient 6
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (6, '2025-01-27', '13:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (102, 6, '2025-01-27', '13:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 6, '2025-01-27', '13:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1076, '2025-01-27', 301, 6, '2025-01-27', '13:00:00', 67);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2076, 'Paciente 6', 6, 1076, 'SaudeMais');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (6, 16, 'Bom');

-- Appointment 78 for Patient 38
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (38, '2025-01-23', '14:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (100, 38, '2025-01-23', '14:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 38, '2025-01-23', '14:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1077, '2025-01-23', 300, 38, '2025-01-23', '14:00:00', 156);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2077, 'Paciente 38', 38, 1077, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (38, 31, 'Bom');

-- Appointment 79 for Patient 37
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (37, '2025-03-18', '15:00:00', 'Colocação de aparelho');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (101, 37, '2025-03-18', '15:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 37, '2025-03-18', '15:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1078, '2025-03-18', 300, 37, '2025-03-18', '15:00:00', 185);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2078, 'Paciente 37', 37, 1078, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (37, 16, 'Cariado');

-- Appointment 80 for Patient 44
INSERT INTO Consulta (num_paciente, data, hora, tratamentos) VALUES (44, '2025-02-12', '16:00:00', 'Tratamento padrão');
INSERT INTO Pratica (ID_medico, num_paciente, data, hora) VALUES (104, 44, '2025-02-12', '16:00:00');
INSERT INTO Assiste (ID_enfermeiro, num_paciente, data, hora) VALUES (201, 44, '2025-02-12', '16:00:00');
INSERT INTO Recibo (num_recibo, data_rec, ID_rececionista, num_paciente, data_consulta, hora_consulta, valor) VALUES (1079, '2025-02-12', 300, 44, '2025-02-12', '16:00:00', 180);
INSERT INTO Pagamento (num_fatura, pagador, num_paciente, num_recibo, nome_seguradora) VALUES (2079, 'Paciente 44', 44, 1079, 'CriançaProtegida');
INSERT INTO Dentes (num_paciente, num_dente, estado) VALUES (44, 12, 'Bom');
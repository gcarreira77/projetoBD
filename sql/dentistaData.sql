USE Dentista;
GO
/*

DELETE FROM Pagamento;
DELETE FROM Recibo;
DELETE FROM Pratica;
DELETE FROM Assiste;
DELETE FROM Consulta;
DELETE FROM Dentes;
DELETE FROM Seguros;
DELETE FROM Paciente;
DELETE FROM Medico;
DELETE FROM Enfermeiro;
DELETE FROM Rececionista;
DELETE FROM Utilizador;
DELETE FROM Seguradora;

GO

*/


-- Utilizadores
INSERT INTO Utilizador VALUES 
(1, 'Rua das Flores 12', '1200-100', 123456789, '1975-04-22', '912345678', 'António Lopes'),
(2, 'Av. República 45', '1050-197', 234567891, '1980-02-10', '913456789', 'Beatriz Silva'),
(3, 'Rua do Alecrim 98', '1100-456', 345678912, '1985-11-30', '914567890', 'Carlos Nunes'),
(4, 'Rua da Saúde 21', '1250-220', 456789123, '1990-07-15', '915678901', 'Marta Costa'),
(5, 'Av. Liberdade 33', '1260-001', 567891234, '1988-03-25', '916789012', 'Pedro Alves'),
(6, 'Rua da Estação 77', '1300-250', 678912345, '1972-12-12', '917890123', 'Ana Freitas'),
(7, 'Largo da Igreja 5', '1400-789', 789123456, '1991-09-01', '918901234', 'Miguel Rocha');

-- Médicos
INSERT INTO Medico VALUES 
(1, 'Ortodontia'),
(2, 'Odontopediatria'),
(3, 'Higiene Oral');

-- Enfermeiros
INSERT INTO Enfermeiro VALUES 
(4),
(5);

-- Rececionistas
INSERT INTO Rececionista VALUES 
(6),
(7);

-- Pacientes
INSERT INTO Paciente VALUES 
(101, 'Rua Nova 1', 111111111, '2010-06-12', 'Joana Marques', '1500-001', '921111111', 'Usa aparelho desde 2023'),
(102, 'Rua Verde 2', 222222222, '2015-03-05', 'Tomás Oliveira', '1600-002', '922222222', 'Primeira consulta pediátrica'),
(103, 'Av. Azul 3', 333333333, '1990-08-19', 'Carla Mendes', '1700-003', '923333333', 'Limpeza regular'),
(104, 'Largo Sol 4', 444444444, '1982-12-01', 'Filipe Gomes', '1800-004', '924444444', 'Consulta de rotina'),
(105, 'Rua da Alegria 5', 555555555, '2000-01-25', 'Sofia Fernandes', '1900-005', '925555555', 'Gengivite ligeira'),
(106, 'Av. da Liberdade 6', 666666666, '1988-11-11', 'Bruno Coelho', '2000-006', '926666666', 'Sem seguro'),
(107, 'Travessa do Norte 7', 777777777, '1995-07-07', 'Rita Santos', '2100-007', '927777777', 'Cáries ativas'),
(108, 'Rua da Escola 8', 888888888, '2012-02-02', 'Diogo Matos', '2200-008', '928888888', 'Consulta infantil'),
(109, 'Av. Central 9', 999999999, '1999-09-09', 'Inês Lima', '2300-009', '929999999', 'Limpeza profunda'),
(110, 'Praça Velha 10', 101010101, '1980-10-10', 'Pedro Reis', '2400-010', '930000000', 'Consulta para colocação de aparelho');

-- Seguradoras
INSERT INTO Seguradora VALUES 
('Medis', 'apoio@medis.pt'),
('Multicare', 'geral@multicare.pt'),
('Tranquilidade', 'clientes@tranquilidade.pt'),
('Fidelidade', 'contacto@fidelidade.pt');

-- Seguros
INSERT INTO Seguros VALUES 
('Aparelhos Dentários', 50.00, 101, 'Medis'),
('Seguro Infantil', 80.00, 102, 'Multicare'),
('Higiene Oral', 30.00, 103, 'Tranquilidade'),
('Aparelhos Dentários', 50.00, 104, 'Fidelidade'),
('Higiene Oral', 30.00, 105, 'Medis');


-- Dentes
INSERT INTO Dentes VALUES (101, 11, 'Com aparelho');
INSERT INTO Dentes VALUES (101, 12, 'Alinhado');
INSERT INTO Dentes VALUES (102, 21, 'Em desenvolvimento');
INSERT INTO Dentes VALUES (103, 13, 'Tártaro visível');
INSERT INTO Dentes VALUES (107, 14, 'Cárie média');
INSERT INTO Dentes VALUES (110, 11, 'Desalinhado');

-- Consultas + Pratica + Assiste
INSERT INTO Consulta VALUES (101, '2025-06-01', '09:00', 'Ajuste de aparelho');
INSERT INTO Pratica VALUES (1, 101, '2025-06-01', '09:00');
INSERT INTO Assiste VALUES (4, 101, '2025-06-01', '09:00');

INSERT INTO Consulta VALUES (102, '2025-06-01', '10:00', 'Consulta infantil de rotina');
INSERT INTO Pratica VALUES (2, 102, '2025-06-01', '10:00');
INSERT INTO Assiste VALUES (5, 102, '2025-06-01', '10:00');

INSERT INTO Consulta VALUES (103, '2025-06-01', '11:00', 'Limpeza dentária');
INSERT INTO Pratica VALUES (3, 103, '2025-06-01', '11:00');

INSERT INTO Consulta VALUES (104, '2025-06-01', '12:00', 'Avaliação geral');
INSERT INTO Pratica VALUES (1, 104, '2025-06-01', '12:00');

INSERT INTO Consulta VALUES (105, '2025-06-01', '13:00', 'Limpeza dentária profunda');
INSERT INTO Pratica VALUES (3, 105, '2025-06-01', '13:00');

INSERT INTO Consulta VALUES (106, '2025-06-01', '14:00', 'Extração de dente');
INSERT INTO Pratica VALUES (1, 106, '2025-06-01', '14:00');

INSERT INTO Consulta VALUES (107, '2025-06-01', '15:00', 'Tratamento de cárie');
INSERT INTO Pratica VALUES (2, 107, '2025-06-01', '15:00');

INSERT INTO Consulta VALUES (108, '2025-06-01', '16:00', 'Consulta pediátrica');
INSERT INTO Pratica VALUES (2, 108, '2025-06-01', '16:00');

INSERT INTO Consulta VALUES (109, '2025-06-01', '17:00', 'Limpeza regular');
INSERT INTO Pratica VALUES (3, 109, '2025-06-01', '17:00');

INSERT INTO Consulta VALUES (110, '2025-06-01', '18:00', 'Colocação de aparelho');
INSERT INTO Pratica VALUES (1, 110, '2025-06-01', '18:00');

-- Recibos
INSERT INTO Recibo VALUES 
(1, '2025-06-01', 6, 101, '2025-06-01', '09:00', 60.00),
(2, '2025-06-01', 6, 102, '2025-06-01', '10:00', 60.00),
(3, '2025-06-01', 7, 103, '2025-06-01', '11:00', 60.00),
(4, '2025-06-01', 7, 104, '2025-06-01', '12:00', 60.00),
(5, '2025-06-01', 6, 105, '2025-06-01', '13:00', 60.00),
(6, '2025-06-01', 6, 106, '2025-06-01', '14:00', 60.00),
(7, '2025-06-01', 6, 107, '2025-06-01', '15:00', 60.00),
(8, '2025-06-01', 6, 108, '2025-06-01', '16:00', 60.00),
(9, '2025-06-01', 7, 109, '2025-06-01', '17:00', 60.00),
(10, '2025-06-01', 7, 110, '2025-06-01', '18:00', 60.00);

-- Pagamentos
INSERT INTO Pagamento VALUES 
(1, 'Medis', 101, 1, 'Medis'),
(2, 'Multicare', 102, 2, 'Multicare'),
(3, 'Tranquilidade', 103, 3, 'Tranquilidade'),
(4, 'Filipe Gomes', 104, 4, NULL),
(5, 'Medis', 105, 5, 'Medis'),
(6, 'Bruno Coelho', 106, 6, NULL),
(7, 'Rita Santos', 107, 7, NULL),
(8, 'Multicare', 108, 8, 'Multicare'),
(9, 'Inês Lima', 109, 9, NULL),
(10, 'Fidelidade', 110, 10, 'Fidelidade');
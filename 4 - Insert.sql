-- Cadastra os dentistas da clínica
INSERT INTO clinica.dentista
	(nome, cpf, cro, especialidade)
VALUES
	('Pedro Almeida', '07323592445', 'CRO-001', 'Implantodontia'),
	('Joao Felipe', '82215178442', 'CRO-002', 'Dentistica'),
	('Chris Rocha', '73503648658', 'CRO-003', 'Periodontia'),
	('Epaminondas Da Silva', '03838737709', 'CRO-004', 'Cirurgião dentista'),
	('Renato Pordeus Furtado', '74640775393', 'CRO-005', 'Dentista Clínico Geral'),
	('Finadina Ferrugina', '05960967120', 'CRO-006', 'Dentista Clínico Geral'),
	('Maria Cecilia', '18637377157', 'CRO-007', 'Dentistica'),
	('Camila Alfreida', '85772639676', 'CRO-008', 'Cirurgião dentista'),
	('Ana Baiana', '42485252912', 'CRO-009', 'Ortodontia'),
	('Julia Camaraes', '97593909069', 'CRO-010', 'Odontopediatra');
	
-- Define os dias e horários que cada dentista atende
INSERT INTO clinica.horario_atendimento
	(dia_semana, hora_inicio, hora_fim, id_dentista)
VALUES
	('Segunda', '08:00', '12:00', 1),
	('Quarta', '13:00', '17:00', 9),
	('Segunda', '14:00', '18:00', 2),
	('Sexta', '08:00', '12:00', 2),
	('Terça', '09:00', '13:00', 3),
	('Quinta', '14:00', '18:00', 3),
	('Segunda', '08:00', '12:00', 4),
	('Quarta', '14:00', '18:00', 10),
	('Terça', '08:00', '12:00', 5),
	('Sexta', '13:00', '17:00', 5),
	('Quarta', '08:00', '12:00', 6),
	('Quinta', '13:00', '17:00', 6),
	('Segunda', '13:00', '17:00', 7),
	('Sexta', '08:00', '12:00', 8);
	
-- Cadastra os pacientes da clínica
INSERT INTO clinica.paciente
	(nome,cpf,data_nasc,telefone,email,endereco)
VALUES
	('Frederico Fernandes','18446396593','2000-04-20','2121653735','fredericofer445@gmail.com',NULL),
	('Luiz Velho','64935693910','1941-08-26','2226359346',NULL,'Boulevard Presidente Vargas 1529'),
	('Diego Pedroso','85904673917','2001-04-16','9238687318',NULL,'Passagem Central 7842'),
	('Vinho Diezel','49036758940','2005-12-07','8820844953','aguacomgasolina664@gmail.com','Avenida dos Ferroviários 1480'),
	('Lucio Correia','38936578391','1998-03-20','2433742926','luciocorreiosantos738@gmail.com','Travessa dos Pescadores 6016'),
	('Marcia Bartalotti','64830573917','1999-02-15','21984567231','marcibartaloti547@gmail.com',NULL),
	('Simone Alvarez','75946301594','1995-11-03','21999887766','simone.alvarez@email.com','Rua das Flores 123'),
	('Carlos Mendes','12345678901','1987-07-22','21977665544','carlos.mendes@email.com','Av. Brasil 456'),
	('Ana Paula Souza','98765432100','2002-01-10','21966554433','ana.paula@email.com','Rua Amapá 789'),
	('Roberto Lima','74185296300','1990-09-30','21955443322','roberto.lima@email.com','Travessa Rio Branco 321');

-- Cadastra os procedimentos odontológicos
INSERT INTO clinica.procedimento
	(nome_procedimento, descricao, duracao_media)
VALUES
	('Limpeza', 'Placa bacteriana e remoção de tartáros', 30),
	('Clareamento', 'Procedimento estético odontológico', 60),
	('Canal', 'Tratamento endodôntico', 120),
	('Implante', 'Intalação de pinos de titânio', 90),
	('Extração', 'Remoção de elemento dentário', 30),
	('Implante', 'Intalação de pinos de titânio', 90),
	('Restauração', 'Tratamento de cárie', 60),
	('Aplicação de Flúor e Selantes', 'Proteção contra cáries', 30),
	('Exame Clínico', 'Diagnóstico geral da saúde bucal', 30),
	('Manutenção Ortodôntica', 'Ajuste de aparelho fixo', 30);

-- Registra as consultas agendadas e realizadas
INSERT INTO clinica.consulta
    (data_hora, descricao, prescricao, status, id_paciente, id_dentista)
VALUES
    ('11/03/2026 08:00:00', 'Paciente com dor molar.', 'Amoxicilina 500mg', 'realizada', 1, 6),
    ('13/03/2026 13:30:00', 'Avaliação de rotina.', NULL, 'realizada', 2, 5),
    ('16/03/2026 14:00:00', 'Início de clareamento', 'Evitar evitar alimentos e bebidas com alto teor de corantes (pigmentos) por 48h.', 'realizada', 3, 2),
    ('19/03/2026 14:30:00', 'Remoção de pontos', NULL, 'realizada', 4, 6),
    ('20/03/2026 08:00:00', 'Urgência - dente quebrado', 'Analgésico se houver dor', 'realizada', 5, 8),
    ('25/03/2026 15:30:00', 'Manutenção mensal', NULL, 'realizada', 6, 9),
    ('30/03/2026 13:30:00', 'Clareamento', NULL, 'agendada', 7, 7),
    ('31/03/2026 08:40:00', 'Limpeza semestral', NULL, 'agendada', 8, 5),
    ('30/04/2026 10:00:00', 'Avaliação para implante', NULL, 'agendada', 9, 1),
    ('30/03/2026 15:30:00', 'Troca de restauração', NULL, 'cancelada', 10, 7),
    ('01/04/2026 08:40:00', 'Limpeza semestral', NULL, 'agendada', 1, 6),
    ('17/04/2026 10:00:00', 'Clareamento', NULL, 'agendada', 3, 2),
    ('24/04/2026 15:30:00', 'Limpeza semestral', NULL, 'agendada', 3, 5);

-- Liga cada consulta aos procedimentos realizados
INSERT INTO clinica.consulta_proced
	(id_consulta, id_procedimento)
VALUES
	(1, 9),
	(1, 3),
	(2, 9),
	(3, 2),
	(4, 9),
	(5, 7),
	(5, 8),
	(6, 10);
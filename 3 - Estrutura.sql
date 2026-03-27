--CREATE DATABASE clinica_odontologica;

-- Cria um esquema
CREATE SCHEMA clinica;

-- Armazena os dados cadastrais dos pacientes
CREATE TABLE clinica.paciente(
	id_paciente SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	data_nasc DATE NOT NULL,
	telefone VARCHAR(11) NOT NULL,
	email VARCHAR(100),
	endereco VARCHAR(250)
);
-- Armazena os dados dos dentistas da clínica
CREATE TABLE clinica.dentista(
	id_dentista SERIAL PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	cro VARCHAR(7) NOT NULL UNIQUE,
	especialidade VARCHAR(50)
);
-- Define os possíveis status que uma consulta pode ter
CREATE TYPE clinica.status_consulta AS ENUM (
    'agendada',
    'realizada',
    'cancelada'
);
-- Armazena as consultas agendadas, realizadas e canceladas
CREATE TABLE clinica.consulta(
	id_consulta SERIAL PRIMARY KEY,
	data_hora TIMESTAMP UNIQUE NOT NULL,
	descricao TEXT,
	prescricao TEXT,
	status clinica.status_consulta NOT NULL,
	id_paciente INT NOT NULL REFERENCES clinica.paciente(id_paciente),
	id_dentista INT NOT NULL REFERENCES clinica.dentista(id_dentista)
);
-- Armazena os procedimentos odontológicos disponíveis
CREATE TABLE clinica.procedimento(
	id_procedimento SERIAL PRIMARY KEY,
	nome_procedimento VARCHAR(100) NOT NULL,
	descricao TEXT,
	duracao_media INT
);
-- Tabela de ligação entre consultas e procedimentos
CREATE TABLE clinica.consulta_proced(
	id_consulta_proced SERIAL PRIMARY KEY,
	id_consulta INT REFERENCES clinica.consulta(id_consulta),
	id_procedimento INT REFERENCES clinica.procedimento(id_procedimento)
);
-- Define os horários que cada dentista atende na semana
CREATE TABLE clinica.horario_atendimento(
	id_horario SERIAL PRIMARY KEY,
	dia_semana VARCHAR(30),
	hora_inicio TIME NOT NULL,
	hora_fim TIME NOT NULL,
	id_dentista INT NOT NULL REFERENCES clinica.dentista(id_dentista)
);
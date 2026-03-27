-- Atualiza o telefone do paciente Frederico Fernandes
UPDATE clinica.paciente
	SET telefone = '21999075855'
	WHERE nome = 'Frederico Fernandes';
	
-- Atualiza o nome da dentista com CRO-007
UPDATE clinica.dentista
	SET nome = 'Maria Cecilia Albuquerque'
	WHERE cro = 'CRO-007';

-- Atualiza o email da paciente Simone Alvarez
UPDATE clinica.paciente
	SET email = 'simone.alvarez10@email.com'
	WHERE nome = 'Simone Alvarez';

-- Excluir consultas canceladas
DELETE FROM clinica.consulta
	WHERE status = 'cancelada';
	
-- Impedimento de exclusão de pacinete com consulta
DELETE FROM clinica.paciente
	WHERE nome = 'Vinho Diezel';

-- Delete do horario de um dentista
DELETE FROM clinica.horario_atendimento
	WHERE id_dentista = 3 
	AND dia_semana = 'Quinta';

-- Índice para buscar dentistas por nome
CREATE INDEX idx_dentista_nome ON clinica.dentista (nome);

-- Índice para buscar pacientes por CPF
CREATE INDEX idx_paciente_cpf ON clinica.paciente (cpf);
/*
4 - View com lista de consultas ordenadas por data: crie uma VIEW que selecione os
seguintes campos: id_consulta, nome_paciente, nome_dentista, data_consulta,
procedimentos_realizados e ordene em ordem decrescente pela data da consulta.
*/

CREATE VIEW clinica.consultas_ordenadas AS
SELECT 
    c.id_consulta,
    p.nome AS nome_paciente,
    d.nome AS nome_dentista,
    c.data_hora AS data_consulta,
    c.status,
    pr.nome_procedimento AS procedimento
FROM clinica.consulta c
	INNER JOIN clinica.paciente p ON c.id_paciente = p.id_paciente
	INNER JOIN clinica.dentista d ON c.id_dentista = d.id_dentista
	LEFT JOIN clinica.consulta_proced cp ON c.id_consulta = cp.id_consulta
	LEFT JOIN clinica.procedimento pr ON cp.id_procedimento = pr.id_procedimento
	ORDER BY c.data_hora DESC, c.id_consulta, pr.nome_procedimento;

SELECT * FROM clinica.consultas_ordenadas;
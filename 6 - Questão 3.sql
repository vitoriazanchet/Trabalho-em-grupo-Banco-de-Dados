/*
3 - Pacientes com maior número de consultas: liste os pacientes e a quantidade de
consultas que cada um realizou, ordenando em ordem decrescente pelo número de
consultas.
*/

SELECT 
    p.nome AS paciente,
    COUNT(c.id_consulta) AS total_consultas
FROM clinica.paciente p
	LEFT JOIN clinica.consulta c ON p.id_paciente = c.id_paciente
	GROUP BY p.id_paciente, p.nome
	ORDER BY total_consultas DESC;

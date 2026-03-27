/*
1- Quantidade de consultas por especialidade: selecione todas as especialidades dos dentistas 
e faça um COUNT para contar o número total de consultas realizadas por cada especialidade.
*/

SELECT 
	d.especialidade,
	COUNT(c.id_consulta) total_consultas_realizadas
FROM clinica.dentista d
	LEFT JOIN clinica.consulta c ON d.id_dentista = c.id_dentista 
	AND c.status = 'realizada'
	GROUP BY d.especialidade
	ORDER BY total_consultas_realizadas DESC;

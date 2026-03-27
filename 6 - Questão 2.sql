/*
2 - Quantidade de consultas realizadas por cada dentista: selecione o nome de todos
os dentistas e faça um COUNT para contar a quantidade de consultas realizadas por
cada um e exiba em ordem decrescente pela quantidade de consultas.
*/

SELECT 
    d.nome AS dentista,
    d.especialidade,
    COUNT(c.id_consulta) AS total_consultas_realizadas
FROM clinica.dentista d
	LEFT JOIN clinica.consulta c ON d.id_dentista = c.id_dentista AND c.status = 'realizada'
	GROUP BY d.id_dentista, d.nome, d.especialidade
	ORDER BY total_consultas_realizadas DESC;

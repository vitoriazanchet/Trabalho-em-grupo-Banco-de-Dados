/*
5 - Média de consultas por dentista: calcule a média de consultas realizadas por dentista.
*/

SELECT 
	ROUND(AVG(total_consultas), 2) AS media_consultas_por_dentista
FROM(
	SELECT 
	d.id_dentista,
	d.nome AS dentista,
	COUNT(c.id_consulta) AS total_consultas
FROM clinica.dentista d
	LEFT JOIN clinica.consulta c ON d.id_dentista = c.id_dentista AND c.status = 'realizada'
	GROUP BY d.id_dentista, d.nome);
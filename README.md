# Trabalho em grupo Banco de Dados

# 🦷 Sistema de Gerenciamento de Clínica Odontológica
### 🎓 Exercício em Grupo - Residência em TIC/Software Serratec (2026)

Este projeto foi desenvolvido como um exercício prático para a disciplina de **Banco de Dados** no programa de Residência em Software do **Serratec**. O objetivo é aplicar conceitos de modelagem relacional, normalização e consultas SQL avançadas utilizando PostgreSQL.

---

## 🛠️ Estrutura do Projeto

* **Gestão de Agendamentos:** Controle de status via tipos `ENUM`.
* **Escala de Profissionais:** Horários de atendimento vinculados aos dentistas.
* **Histórico de Procedimentos:** Relacionamento N:N entre consultas e procedimentos.
* **Integridade de Dados:** Uso de chaves primárias, estrangeiras e restrições de unicidade.

---

## 📊 Relatórios e Métricas (DML)

O script SQL fornece a resolução de desafios propostos em aula, incluindo:
1. **Consultas por Especialidade:** Contagem total de atendimentos por área.
2. **Ranking de Produtividade:** Dentistas com maior volume de consultas realizadas.
3. **Fidelidade de Pacientes:** Lista de pacientes com maior histórico de consultas.
4. **View de Agenda:** Visão consolidada de consultas, pacientes e procedimentos.
5. **Média de Atendimento:** Cálculo da média aritmética de consultas por profissional.

---

## 👥 Criadores

Este projeto foi desenvolvido por:

* **Elionardo Silva dos Santos** - [GitHub](https://github.com/elionardosantos) | [LinkedIn](https://www.linkedin.com/in/elionardo-s-santos)
* **Gabriel Wendling Vieira** - [GitHub](https://github.com/Gabrielw342) | [LinkedIn](www.linkedin.com/in/gabriel-wendling-vieira)
* **Igor Brian Braga Dias** - [GitHub](https://github.com/Bryanxrt) | [LinkedIn](https://www.linkedin.com/in/igorbrian)
* **Melissa Lima da Silva** - [GitHub](https://github.com/melissa-lima21) | [LinkedIn]
* **Vitória de Paula Zanchet** - [GitHub](https://github.com/vitoriazanchet) | [LinkedIn](https://www.linkedin.com/in/vitoria-zanchet)
* **Wallace de Oliveira Ildefonso** - [GitHub](https://github.com/arrobateh) | [LinkedIn](https://www.linkedin.com/in/wallaceildefonso)

---

## 🚀 Como Executar

1. Certifique-se de ter o **PostgreSQL** instalado
2. Crie um banco de dados
3. Execute o script `3 - Estrutura.sql` para criar a estrutura do banco de dados
4. Execute o script `4 - Insert` para preencher as tabelas com dados fictícios
5. O script criará automaticamente o schema `clinica`, as tabelas e inserirá dados fictícios para teste.
6. Execute o script `5 - Update, Delete, Index` para realizar as alterar os dados fictícios e criar os índices para acelerar as consultas
7. Execute os script `6` para visualizar a resolução de cada questão

---

## 💻 Tech Stack
<a href="https://www.postgresql.org">
<img src="https://upload.wikimedia.org/wikipedia/commons/f/f4/R_%281%29ds.png"
	title ="Postgresql"
	width="50">
</a>

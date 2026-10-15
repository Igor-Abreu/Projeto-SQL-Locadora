# Análise de Dados de Locadora de Filmes — Hashtag Movie (SQL)

## Visão Geral do Projeto
Este projeto de portfólio explora e analisa o banco de dados relacional de uma locadora/plataforma de streaming fictícia (**Hashtag Movie**). O objetivo principal é extrair insights estratégicos sobre o comportamento de locação dos clientes, faturamento por gênero cinematográfico, distribuição geográfica de consumo e desempenho dos filmes em termos de avaliações.

O projeto foi totalmente desenvolvido utilizando consultas em **SQL no MySQL Workbench**.

---

## Estrutura do Banco de Dados
O banco de dados é composto por 4 tabelas principais:

* **`clientes`**: Contém dados demográficos e localização dos usuários (ID, nome, estado, região, sexo, data de nascimento e criação da conta).
* **`filmes`**: Contém o catálogo de filmes (ID, título, gênero, duração, ano de lançamento e preço do aluguel).
* **`alugueis`**: Registra as transações de locação (ID do aluguel, ID do cliente, ID do filme, nota atribuída e data do aluguel).
* **`atuacoes`** e **`atores`**: Mapeiam o elenco dos filmes e informações dos atores (nome, ano de nascimento, nacionalidade e sexo).

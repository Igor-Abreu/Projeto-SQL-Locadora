# Observando as tabelas
SELECT * FROM alugueis;
SELECT * FROM atores;
SELECT * FROM atuacoes;
SELECT * FROM clientes;
SELECT * FROM filmes;

# Qual é o faturamento total gerado por cada gênero de filme?
SELECT 
    f.genero,
    COUNT(a.id_aluguel) AS total_alugueis,
    ROUND(SUM(f.preco_aluguel), 2) AS faturamento_total
FROM alugueis AS a
INNER JOIN filmes AS f 
    ON a.id_filme = f.id_filme
GROUP BY f.genero
ORDER BY faturamento_total DESC;

# Quais são os filmes que possuem o preço de aluguel acima da média geral da locadora?
SELECT 
	titulo,
    genero,
    preco_aluguel
FROM filmes
WHERE preco_aluguel >= (SELECT AVG(preco_aluguel) FROM filmes)
ORDER BY preco_aluguel DESC;
SELECT AVG(preco_aluguel) FROM filmes
# Qual é o estado (região dos clientes) que realiza mais aluguéis?
SELECT 
    c.estado,
    c.regiao,
    COUNT(a.id_aluguel) AS qtd_alugueis
FROM alugueis AS a
INNER JOIN clientes AS c 
    ON a.id_cliente = c.id_cliente
GROUP BY c.estado, c.regiao
ORDER BY qtd_alugueis DESC;

SELECT 
    c.regiao,
    COUNT(a.id_aluguel) AS qtd_alugueis
FROM alugueis AS a
INNER JOIN clientes AS c 
    ON a.id_cliente = c.id_cliente
GROUP BY c.regiao
ORDER BY qtd_alugueis DESC;

# Quais são os filmes mais bem avaliados?
CREATE VIEW vw_meida_notas_filmes AS
SELECT 
	f.titulo,
    f.genero,
    ROUND(AVG(CAST(a.nota AS DECIMAL(10, 2))), 2) AS nota_media,
	COUNT(a.nota) AS total_avaliacoes
FROM alugueis AS a
INNER JOIN filmes AS f 
    ON a.id_filme = f.id_filme
WHERE a.nota IS NOT NULL
GROUP BY f.titulo, f.genero;
/*
Exercícios Práticos

Use sua tabela produtos.

 - Quantos produtos existem?
 - Qual o preço médio dos produtos?
 - Qual o produto mais caro?

Agora crie uma tabela vendas com (id, produto, valor)
 - Insira pelo menos 6 vendas com produtos repetidos.

 - Some o valor total por produto.
 - Mostre apenas produtos cuja soma seja maior que 100.
 - Conte quantas vendas cada produto teve.
*/


\c curso_sql

-- Quantos produtos existem:
SELECT COUNT(*) FROM produtos;

-- Preço médio
SELECT AVG(preco) FROM produtos;

-- Produto mais caro
SELECT nome, preco FROM produtos
ORDER BY preco DESC
LIMIT 1;



-- cria tabela vendas
CREATE TABLE vendas
(id SERIAL PRIMARY KEY,
produto VARCHAR(100) NOT NULL,
valor DECIMAL(10, 2) NOT NULL);

-- inserindo 6 itens
INSERT INTO vendas(produto, valor)
VALUES
('livro1', 30.00),
('livro1', 99.99),
('livro2',25.50),
('livro3',100.99),
('livro2', 50.75),
('livro2', 70.65),
('livro3', 90.50),
('livro4', 200.00),
('livro5', 180.50);

-- somando o valor total dos produtos:
SELECT produto, SUM(valor) AS total
FROM vendas
GROUP BY produto;

-- produtos com a soma maior que 100.
SELECT produto, SUM(valor) AS Total
FROM vendas
GROUP BY produto
HAVING SUM(valor) > 100;

-- Verificar quantas vendas teve:
SELECT produto, COUNT(*) AS quantidade_vendas
FROM vendas
GROUP BY produto;



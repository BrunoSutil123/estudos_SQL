/*
Exercício 2 - Práticos (Faça no seu banco)

 - Use sua tabela produtos.
 - 1. Liste produtos com preço maior que 100.
 - 2° Liste produtos com estoque entre 10 e 50.
 - 3° Liste produtos cujo nome começa com “C”.
 - 4° Liste produtos ordenados por preço do maior para o menor.
 - 5° Liste apenas os 2 produtos mais caros.
*/

--Se conectando ao banco (curso_SQL)
\c curso_SQL;

-- Comecei criando novos produtos na tabela 'produtos'
INSERT INTO produtos(nome, preco, estoque)
VALUES
('monitor gamer', 700.00, 315),
('Kit 2 memória ran 8G', 1199.99, 400),
('SSD 1T kingston', 1500.00, 48),
('SSD 2T Kingston', 2000.00, 23),
('Cadeira Gamer', 700.50, 200),
('Cartao Mini SSD', 469.99, 400),
('Fonte 500W', 700.00, 20);

--listando produtos:
--valores acima de 100
SELECT * FROM produtos
WHERE preco > 100;

--estoque entre 10 e 50
SELECT * FROM produtos
WHERE estoque BETWEEN 10 AND 50;

--nome começa com "c"
SELECT * FROM produtos
WHERE nome LIKE 'C%';

--ordenados por preço maior
SELECT * FROM produtos
ORDER BY preco DESC;

--os dois mais caros
SELECT * FROM produtos
ORDER BY preco DESC
LIMIT 2;


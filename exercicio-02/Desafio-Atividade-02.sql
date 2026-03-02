/*
Desafio atividade 02:

Crie uma tabela clientes:
 - id
 - nome
 - cidade
 - idade
 - Insira pelo menos 6 registros variados.

Depois faça:
 - Liste clientes de São Paulo com idade maior que 18.
 - Liste clientes cujo nome contenha “a”.
 - Liste os 3 mais velhos.
*/


CREATE TABLE clientes(
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cidade VARCHAR(100) NOT NULL,
idade INTEGER NOT NULL
);

INSERT INTO clientes (nome, cidade, idade)
VALUES
('Bruno', 'Sao Paulo', 20),
('Catarina', 'Sao Paulo', 18),
('Joao', 'Bahia', 22),
('Viviane', 'Porto Alegre', 38),
('Julia', 'Sao Paulo', 13),
('Fernanda', 'Rio de janeiro', 19),
('Francisco', 'Sao Paulo', 21);

-- Clientes de São Paulo com idade maior que 18
SELECT * FROM clientes
WHERE cidade = 'Sao Paulo'
AND idade > 18;

-- Clientes cujo nome contenha "a"
SELECT * FROM clientes
WHERE nome ILIKE '%a%';

-- Os 3 clientes mais velhos
SELECT * FROM clientes
ORDER BY idade DESC
LIMIT 3;
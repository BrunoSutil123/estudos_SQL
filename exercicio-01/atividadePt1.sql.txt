/*
Atividade1: 
- Crie um banco de dados (curso_sql).

- Crie uma tabela chamada "alunos" com (id, nome, idade e e-mail)
- Insira dados a tabela alunos.

- Crie uma tabela chamada "produtos" com (id, nome, preço e estoque)
- Insira 3 produtos diferentes.

- Crie uma tabela "pedidos" que tenha (id, data pedido e valor_total)
- insira dados a essa tabela.

- faça o SELECT de todas as tabelas.
*/

CREATE DATABASE curso_sql;
\c curso_sql

CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INTEGER,
    email VARCHAR(150)
);
INSERT INTO alunos (nome, idade, email)
VALUES ('Bruno', 20, 'bruno@email.com');

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INTEGER NOT NULL
);
INSERT INTO produtos (nome, preco, estoque)
VALUES 
('Notebook', 4500.50, 100),
('Mouse', 23.50, 12),
('Teclado', 99.99, 38);

CREATE TABLE pedidos (
    id SERIAL PRIMARY KEY,
    data_pedido DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL
);
INSERT INTO pedidos (data_pedido, valor_total)
VALUES ('2026-03-01', 1256.86);

SELECT * FROM alunos;
SELECT * FROM produtos;
SELECT * FROM pedidos;

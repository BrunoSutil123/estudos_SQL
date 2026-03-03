/*
Desafio da atividade 03

Crie tabela funcionarios (id, nome, departamento, salario)

 - Insira pelo menos 8 funcionários em 3 departamentos diferentes.

Depois faça:

 - Média salarial por departamento.
 - Departamento com maior média salarial.
 - Quantidade de funcionários por departamento.
 - Mostre apenas departamentos com mais de 2 funcionários.

E por fim, o desafio:

 - Mostrar apenas departamentos cuja média salarial seja maior que 3000 E tenham mais de 2 funcionários
*/

\c curso_sql

-- Criando uma tabela funcionários:
CREATE TABLE funcionarios(
id SERIAL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
departamento VARCHAR(100) NOT NULL,
salario DECIMAL(10, 2) NOT NULL
);


-- Inserindo valores:
INSERT INTO funcionarios(nome, departamento, salario)
VALUES
('Bruno Sutil', 'T.I.', 4500.00),
('João Vitor', 'T.I.', 4600.00),
('Catarina Rodrigues', 'ADM', 3000.00),
('Matheus Antunes', 'Logistica', 2100.00),
('Alexandre Pereira', 'Marketing', 1800.00),
('João Victor', 'ADM', 2400.00),
('Vitor Rocha', 'Comercial', 3400.00),
('Gabriely Santos', 'Financeiro', 4100.00),
('Eduardo Pinto', 'Financeiro', 4000.00),
('Bruno Silva', 'Marketing', 2000.00),
('Camila Santana', 'Logistica', 2200.00),
('Ana Clara', 'Marketing', 1800.00),
('Eduardo Barbosa', 'T.I.', 2500.00),
('Fernanda do Carmo', 'T.I.', 7000.00);


-- Média salarial p/ departamento:
SELECT departamento, AVG(salario) AS Media_salarial
FROM funcionarios
GROUP BY departamento;


-- Departamento c/ maior média salarial:
SELECT departamento, AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento
ORDER BY media_salarial DESC
LIMIT 1;


-- Funcionários p/ departamento:
SELECT departamento, COUNT(*) AS Numero_de_funcionarios
FROM funcionarios
GROUP BY departamento;


-- Departamentos com mais de 2 funcionários:
SELECT departamento, COUNT(*) AS Numero_de_funcionarios
FROM funcionarios
GROUP BY departamento
HAVING COUNT(*) > 2;


-- Desafio:
SELECT departamento, COUNT(departamento) AS qtd_funcionarios, AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento
HAVING AVG(salario) > 3000 AND COUNT(departamento) > 2
ORDER BY media_salarial DESC;
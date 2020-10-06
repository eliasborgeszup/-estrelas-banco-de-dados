-- Exercicio 01
SELECT c.nome, c.estado, c.numero_habitantes FROM cidade c
WHERE c.estado IN('SP', 'MG', 'GO');

-- Exercicio 02
SELECT c.* FROM cidade c
WHERE c.estado NOT IN('SP', 'MG', 'PB');

-- Exercicio 03
SELECT c.nome FROM cidade c, estado e
WHERE c.estado = e.sigla 
AND c.nome LIKE('M%');

-- Exercicio 04
SELECT COUNT(*)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Centro-Oeste' AND c.renda_per_capita > 400.000;

-- Exercicio 05
SELECT SUM(c.numero_habitantes)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Sudeste';

-- Exercicio 06
SELECT ROUND(AVG(c.renda_per_capita), 2)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Nordeste';

-- Exercicio 07
SELECT MAX(c.numero_habitantes)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Centro-Oeste';

-- Exercicio 08
SELECT ROUND(AVG(c.renda_per_capita), 2)
FROM cidade c
WHERE c.capital is true;

-- Exercicio 09
SELECT MIN(c.data_fundacao)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'Sudeste' AND c.capital is false
AND c.numero_habitantes > 100.000;

-- Exercicio 10
INSERT INTO banco_estrelas.cidade (cep, nome, numero_habitantes, capital, estado, renda_per_capita, data_fundacao)
VALUES ('38334132', 'Santa Maria do Tocantins', 584.102, false, 'TO', 100034.39, 19700830);

SELECT ROUND(AVG(c.renda_per_capita), 2)
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao NOT IN('Sudeste', 'Nordeste') AND c.data_fundacao > '1500-04-01'
AND c.nome LIKE('S%');
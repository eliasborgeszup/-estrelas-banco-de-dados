-- Exercicio 01
SELECT c.nome, c.renda_per_capita
FROM cidade c
WHERE c.numero_habitantes > 5000;

-- Exercicio 02
SELECT c.*
FROM cidade c
WHERE c.data_fundacao > '1432-03-12';

-- Exercicio 03
UPDATE cidade c
SET c.cep = '38180000'
WHERE c.cep = '38110000';

SELECT c.*
FROM cidade c
WHERE cep = '38180000';

-- Exercicio 04
SELECT c.nome 
FROM cidade c
WHERE c.estado = 'SP';

-- Exercicio 05
UPDATE cidade c
SET c.numero_habitantes = 12180000
WHERE c.cep = '33250000';

SELECT c.* 
FROM cidade c
WHERE c.estado = 'SP' AND c.numero_habitantes > 100000;

-- Exercicio 06
SELECT c.nome
FROM cidade c
WHERE c.capital is true AND c.renda_per_capita > 30000;

-- Exercicio 07
SELECT c.nome, c.estado
FROM cidade c
WHERE c.estado = 'SP';

-- Exercicio 08
SELECT e.regiao, e.nome, c.nome, c.numero_habitantes
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND c.renda_per_capita > 20.000 AND c.capital is false;

-- Exercicio 09
SELECT c.*
FROM cidade c, estado e
WHERE c.estado = e.sigla
AND e.regiao = 'SUDESTE';

-- Exercicio 10
INSERT INTO banco_estrelas.cidade (cep, nome, numero_habitantes, capital, estado, renda_per_capita, data_fundacao)
VALUES ('38392132', 'Santo Andre', 584.102, false, 'SP', 100034.39, 19700830);

SELECT c.nome, c.numero_habitantes
FROM cidade c, estado e
WHERE (c.estado = e.sigla) 
AND c.capital is false AND e.regiao = 'SUDESTE' AND c.estado <> 'MG' AND c.renda_per_capita > 15.000;

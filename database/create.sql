-- Active: 1676406257414@@127.0.0.1@5432@postgres

CREATE SCHEMA financas_pessoais;

CREATE Table
    financas_pessoais.lancamento (
        id_lancamento SERIAL PRIMARY KEY,
        mes TEXT,
        categoria TEXT,
        tipo TEXT,
        valor NUMERIC
    );

-- SELECT * FROM financas_pessoais.lancamento;

-- DROP TABLE financas_pessoais.lancamento;

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'janeiro',
        'Salário',
        'receita',
        3000
    );

-- DELETE from financas_pessoais.lancamento WHERE id_lancamento = 1;

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'janeiro',
        'Aluguel',
        'despesa',
        1000
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'janeiro',
        'Conta de Luz',
        'despesa',
        200
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'janeiro',
        'Conta de Água',
        'despesa',
        100
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'janeiro',
        'Transporte',
        'despesa',
        500
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'fevereiro',
        'Salário',
        'receita',
        3560
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'fevereiro',
        'Aluguel',
        'despesa',
        1000
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'fevereiro',
        'Conta de Luz',
        'despesa',
        200
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'fevereiro',
        'Conta de Água',
        'despesa',
        100
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'fevereiro',
        'Transporte',
        'despesa',
        500
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'marco',
        'Salário',
        'receita',
        4000
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'marco',
        'Aluguel',
        'despesa',
        1000
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'marco',
        'Conta de Luz',
        'despesa',
        200
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'marco',
        'Transporte',
        'despesa',
        500
    );

INSERT INTO
    financas_pessoais.lancamento (mes, categoria, tipo, valor)
VALUES (
        'abril',
        'Salário',
        'receita',
        3200
    );

SELECT * FROM financas_pessoais.lancamento;

SELECT sum(valor)
from
    financas_pessoais.lancamento
WHERE tipo = 'receita';

SELECT sum(valor)
from
    financas_pessoais.lancamento
WHERE tipo = 'despesa';

SELECT sum(valor), mes, tipo
from
    financas_pessoais.lancamento
GROUP BY mes, tipo
ORDER BY mes, tipo;

DELETE from postgres.financas_pessoais.lancamento;
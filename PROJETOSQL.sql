CREATE DATABASE PROJETO1;
USE PROJETO1;

CREATE TABLE CHAMPIONS (
CLUBES VARCHAR(50) NOT NULL,
TITULOS INT,
VICES INT 
);

#1 DESAFIO: SELECIONAR TODOS OS REGISTROS DA TABELA
SELECT * FROM CHAMPIONS;

#2 DESAFIO: Selecione todos os registros ordenados pelo número de títulos em ordem decrescente.
SELECT * 
FROM CHAMPIONS 
ORDER BY TITULOS DESC ;

#3 DESAFIO: Selecione apenas os registros onde o número de títulos é maior que o número de vices
SELECT CLUBES FROM CHAMPIONS
WHERE TITULOS > VICES;

#4 DESAFIO: Quantos registros existem na tabela?
SELECT COUNT(*) 
FROM CHAMPIONS;

#5 DESAFIO: Qual é o total de títulos de todos os times na tabela?
SELECT SUM(TITULOS)
FROM CHAMPIONS;

#6 DESAFIO: Selecione todos os registros onde o nome do time começa com a letra 'A'.
SELECT * FROM CHAMPIONS 
WHERE CLUBES LIKE ' A%';

#7 DESAFIO: Selecione os registros onde o número de títulos é maior que 5 e o número de vices é menor ou igual a 3.
SELECT * FROM CHAMPIONS
WHERE TITULOS > 5 AND VICES <= 3;

#8 DESAFIO: Selecione os registros onde o número de títulos é 3, 5 ou 7.
SELECT * FROM CHAMPIONS
WHERE TITULOS IN(3,5,7);

#9 DESAFIO: Selecione o nome do time e a diferença entre o número de títulos e vices.
SELECT CLUBES, (TITULOS - VICES) AS Diferença
FROM CHAMPIONS;

#10 DESAFIO: Somando número de Participação em finais e criando coluna
SELECT CLUBES, (TITULOS + VICES) AS ParticipaçãoFinais
FROM CHAMPIONS
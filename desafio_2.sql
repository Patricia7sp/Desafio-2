
/*Questão de número 2*/
SELECT  COUNT(*) AS 'Qtd de Contratos' , cnpj_cpf FROM Contratos_1 WHERE modalidade ="Parcelado" GROUP BY cnpj_cpf

/*Questão de número 3*/
SELECT   COUNT(*) AS 'Qtd de Contratos Em Atraso' , CONTRATO_.cnpj_cpf, CONTRATO_.modalidade 
FROM CONTRATO_ 
INNER JOIN PAGAMENTOS_ 
ON	CONTRATO_.idcontrato = PAGAMENTOS_.id_contrato
WHERE PAGAMENTOS_.valorpagamento = 'NULL' GROUP BY CONTRATO_.numerounico;


/*Questão de número 4*/
SELECT  AVG(PAGAMENTOS_.valor) AS 'Qtd de Contratos Em Atraso',  CONTRATO_.cnpj_cpf, CONTRATO_.modalidade 
FROM CONTRATO_ 
INNER JOIN PAGAMENTOS_ 
ON	CONTRATO_.idcontrato = PAGAMENTOS_.id_contrato
WHERE  PAGAMENTOS_.valorpagamento= 'NULL'
GROUP BY CONTRATO_.numerounico


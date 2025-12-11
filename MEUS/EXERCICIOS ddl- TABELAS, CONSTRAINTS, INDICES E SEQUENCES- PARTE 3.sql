
SELECT * 
FROM USER_TABLES
WHERE TABLE_NAME IN ('PEDIDO','ESTOQUE', 'CAPACIDADE_ESTOQUE', 'ITEM_PRODUTO','CLIENTE', 'PF','PJ','PRODUTO','VENDEDOR','FONE_CLIENTE','FONE_VENDEDOR','PRATELEIRA');
/*****************************************************************************************************************************************/
/****************************************************************************************************************************************/
/****************************************************************************************************************************************/

--               PARTE 3           

/*1) Criar uma constraint que garanta que o valor do NUMERO da tabela PEDIDO esteja
entre, inclusive, 1 e 99999. O nome da constraint (regra) está no modelo físico de
dados.*/
ALTER TABLE PEDIDO
ADD CONSTRAINT  CK_NUMERO_PEDIDO
CHECK(NUMERO BETWEEN 1 AND 99999);


/*CONFERIRIR AS RESTRICOES CRIADAS PARA A TABELA*/
SELECT *
FROM USER_CONSTRAINTS
WHERE TABLE_NAME = 'PEDIDO';


/*2) Criar os indexes UNICOS e INVERTIDOS das tabelas PF e PJ. Nomes para os índices estão no modelo físico. Nomes para as
constraints(regras) de unicidade: UK_PF_CNPF e UK_PJ_CNPJ.*/

--             TABELA PF
-- criando restricao UK_PF_CNPF
DESC PF;

ALTER TABLE PF
ADD CONSTRAINT UK_PF_CNPF UNIQUE (CNPF);

-- criando index
CREATE INDEX IND_CNPF_PF ON PF (CNPF DESC ); 


SELECT *
FROM USER_INDEXES
WHERE INDEX_NAME='IND_CNPF_PF';

--              TABELA PJ
desc PJ;

--criando restricao 
DESC PJ; 

ALTER TABLE PJ
ADD CONSTRAINT UK_PJ_CNPJ UNIQUE (CNPJ);

-- criando index
CREATE  INDEX IND_CNPJ_PJ ON PJ (CNPJ DESC ); 


ALTER TABLE PJ
DROP CONSTRAINT UK_PJ_CNPJ

/*Criar uma sequence de nome SEQ_ITEM_ID para o campo CODIGO de
ITEM_PRODUTO, com incremento de 2.*/

-- criando sequencia tabela ITEM_PRODUTO
CREATE SEQUENCE SEQ_ITEM_ID
INCREMENT BY 2 /*faz cada numero aumentar de 2 em 2*/
NOCACHE /* evita armazenar valores pré-gerados (opcional).*/





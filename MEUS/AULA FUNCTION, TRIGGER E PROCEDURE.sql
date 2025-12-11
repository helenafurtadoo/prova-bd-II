CREATE TABLE ALUNOS
AS
SELECT *
FROM ALUNO.ALUNOS;

CREATE TABLE LOG_ALUNO (
ACAO  VARCHAR(6),
DATA_ALTERACAO DATE 
);
-----------------------------------
--TABELA VAI GURDAR UM LOG
-- TODA VZ Q ALGM FIZER UM INSERT, UPDATE OU  DELETE (eventos DML) VAI GUARDAR(POR MEIO DA TRIGGER) A DATA QUE ISSO FOI FEITO 
/*
CREATE OR REPLACE TRIGGER trg_auditoria_aluno
AFTER INSERT OR UPDATE OR DELETE ON alunos --ESPECIFICANDO QUANDO E QUAL ACAO QUE QUER QUE FACA O TRIGGER 
FOR EACH ROW --PARA CADA LINHA ALTERADA 
DECLARE
v_acao VARCHAR(6);
BEGIN
    IF INSERTING THEN
        v_acao := 'INSERT';
    ELSIF UPDATING THEN
        v_acao := 'UPDATE';
    ELSIF DELETING THEN
        v_acao := 'DELETE';
    END IF;
    INSERT INTO log_aluno (acao, data_alteracao) 
    VALUES (
    V_ACAO,
    SYSDATE -- FUNCAO QUE RETORNA A DATA E HOAS ATUAIS DO SISTEMA 
            );
END;
*/

/*
-----TESTANDO O TRIGGER-------
INSERT INTO ALUNOS VALUES ( 102 , 'helena' , '22/2/2020' , 'blabla@blabla');

SELECT *
FROM log_aluno;*/


--COLOCAR DADOS NA TABELA, P ACIONAR O TRG 
-- visualisando o que tem em cada tabela:
SELECT *
FROM ALUNOS;

SELECT *
FROM LOG_ALUNO; -->tabela que roda e guarda a trigger 
-----------------------------------------

-- inserindo os dados p acionar o trg -------> FAZENDO EM OUTRA PLANILHA SQL PARA EVITAR DE DAR ERRO NESSE ARQUIVO 

----------------------------------------

-- USANDO A FUNCAO DE CALCULAR A IDADE, CRIADA EM OUTRO ARQUIVO
FROM alunos;
----------------------------------------------------------------

SELECT nome, calcular_idade(data_nascimento) AS idade
-------CRIANDO PROCEDURES--------
CREATE OR REPLACE PROCEDURE atualizar_email_aluno( -- NOME + ARGUMENTOS DE SAIDA OU ENTRADA
p_id_aluno IN NUMBER,
p_novo_email IN VARCHAR2
) IS
BEGIN -- BLOCO DE INSTRUCOES 
    UPDATE alunos
    SET email = p_novo_email
    WHERE codigo = p_id_aluno;
    COMMIT;
END;
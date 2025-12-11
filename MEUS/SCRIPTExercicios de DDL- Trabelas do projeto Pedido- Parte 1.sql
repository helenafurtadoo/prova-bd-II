
Table CLIENTE eliminado.


Table CLIENTE criado.

Nome        Nulo?    Tipo          
----------- -------- ------------- 
CODIGO      NOT NULL NUMBER        
NOME        NOT NULL VARCHAR2(60)  
RUA         NOT NULL VARCHAR2(80)  
NR          NOT NULL NUMBER(4)     
BAIRRO      NOT NULL VARCHAR2(50)  
COMPLEMENTO          VARCHAR2(100) 
CIDADE      NOT NULL VARCHAR2(50)  
UF          NOT NULL VARCHAR2(2)   
CEP         NOT NULL VARCHAR2(3)   

Table FONE_CLIENTE eliminado.


Table FONE_CLIENTE criado.

Nome       Nulo?    Tipo         
---------- -------- ------------ 
NUMERO     NOT NULL VARCHAR2(14) 
CODIGO_CLI NOT NULL NUMBER       

Table PF eliminado.


Table PF criado.

Nome            Nulo?    Tipo         
--------------- -------- ------------ 
CODIGO_CLI      NOT NULL NUMBER       
CNPF            NOT NULL VARCHAR2(14) 
RG              NOT NULL VARCHAR2(10) 
DATA_NASCIMENTO NOT NULL DATE         

Table PJ eliminado.


Table PJ criado.

Nome          Nulo?    Tipo         
------------- -------- ------------ 
CODIGO_CLI    NOT NULL NUMBER       
CNPJ          NOT NULL VARCHAR2(19) 
IE            NOT NULL VARCHAR2(10) 
NOME_FANTASIA NOT NULL VARCHAR2(60) 

Table VENDEDOR eliminado.


Table VENDEDOR criado.

Nome      Nulo?    Tipo         
--------- -------- ------------ 
MATRICULA NOT NULL NUMBER       
NOME      NOT NULL VARCHAR2(60) 
CNPF      NOT NULL VARCHAR2(14) 

Table FONE_VENDEDOR eliminado.


Table FONE_VENDEDOR criado.

Nome          Nulo?    Tipo         
------------- -------- ------------ 
NUMERO        NOT NULL VARCHAR2(14) 
MATRICULA_VEN          NUMBER       

Table PRODUTO eliminado.


Table PRODUTO criado.

Nome        Nulo?    Tipo         
----------- -------- ------------ 
CODIGO      NOT NULL NUMBER       
DESCRICAO            VARCHAR2(80) 
UNID_MEDIDA          VARCHAR2(10) 

Table PRATELEIRA eliminado.


Table PRATELEIRA criado.

Nome          Nulo?    Tipo         
------------- -------- ------------ 
CODIGO        NOT NULL NUMBER(3)    
DESCRICAO              VARCHAR2(50) 
NUMERO_SECOES          NUMBER(2)    

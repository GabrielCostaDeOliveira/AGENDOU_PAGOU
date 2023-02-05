-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 05/02/2023
-- Autor(es) ..............: Gabriel Costa de Oliveira, Alex Gabriel Alves Faustino
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B2_AlexFaustino
--       
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 02 usuarios
-- ---------------------------------------------------------

USE TF_1B2_AlexFaustino;
-- PERFIS

CREATE ROLE ADIMINISTRADOR;
CREATE ROLE DESENVOLVEDOR;

-- USUARIOS
CREATE USER ADM identified BY '5h@rP#B3@m@R0ck5!';
CREATE USER ANAMARIABRAGA IDENTIFIED BY 'S3NH@';

-- PRIVILEGIOS

GRANT ALL PRIVILEGES ON TF_1B2_AlexFaustino.* TO ADIMINISTRADOR;

GRANT SELECT ON TF_1B2_AlexFaustino.CLIENTE TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.AVALIACAO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.AUTONOMO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.PAGAMENTO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.AREADEATUACAO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.atua TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.SERVICO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B2_AlexFaustino.MENSALIDADE TO DESENVOLVEDOR;

GRANT ADIMINISTRADOR TO ADM WITH ADMIN OPTION;

GRANT DESENVOLVEDOR TO ANAMARIABRAGA;









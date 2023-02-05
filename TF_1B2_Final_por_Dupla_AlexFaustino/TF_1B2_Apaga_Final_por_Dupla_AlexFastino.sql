-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE APAGAR (DML)
--
-- Data Criacao ...........: 24/01/2023
-- Autor(es) ..............: Gabriel Costa de Oliveira, Alex Gabriel Alves Faustino
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B2_AlexFaustino
--
-- Ultimas Alteracoes
--   29/01/2023 => Adicao do drop da tabela avaliacao e possui      
--   03/02/2023 => Adicao do drop de mensalidade    
--   05/02/2023 => Adicao do drop das ROLE e USER
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 02 usuarios
-- ---------------------------------------------------------

USE TF_1B2_AlexFaustino;

DROP TABLE atua;
DROP TABLE possui;
DROP TABLE AVALIACAO;
DROP TABLE PAGAMENTO;
DROP TABLE SERVICO;
DROP TABLE MENSALIDADE;
DROP TABLE AUTONOMO;
DROP TABLE CARTAO;
DROP TABLE AREADEATUACAO;
DROP TABLE CLIENTE;
DROP TABLE ENDERECO;



DROP ROLE ADIMINISTRADOR;
DROP ROLE DESENVOLVEDOR;

DROP USER ADM;
DROP USER ANAMARIABRAGA;
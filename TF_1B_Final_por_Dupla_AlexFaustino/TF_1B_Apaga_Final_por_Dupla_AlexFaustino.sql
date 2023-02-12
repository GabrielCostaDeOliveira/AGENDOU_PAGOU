-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE APAGAR (DDL)
--
-- Data Criacao ...........: 24/01/2023
-- Autor(es) ..............: Alex Gabriel Alves Faustino, 
--							 Carlos Daniel de Godoy Barros Nascimento,  						
--							 Cristian Souza Assis Furtado,
--							 Gabriel Costa de Oliveira,
--							 Gabriel Moretti de Souza
--
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B_AlexFaustino
--
-- Ultimas Alteracoes
--   29/01/2023 => Adicao do drop da tabela avaliacao e possui      
--   03/02/2023 => Adicao do drop de mensalidade    
--   05/02/2023 => Adicao do drop das ROLE e USER
--   12/02/2023 => Adicao do drop de mais usuarios
--
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 06 usuarios
-- ---------------------------------------------------------

USE TF_1B_AlexFaustino;

-- Tabelas

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

-- Roles

DROP ROLE ADIMINISTRADOR;
DROP ROLE DESENVOLVEDOR;

-- Users

DROP USER Cleiton;
DROP USER Jose;
DROP USER Manoel;
DROP USER ANAMARIABRAGA;
DROP USER NALDO;
DROP USER JOHNLENNON;

-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE CONTROLE (DDL)
--
-- Data Criacao ...........: 05/02/2023
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
--		12/02/2023 => Criação de 4 novos usuarios 
--
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 06 usuarios
-- ---------------------------------------------------------

USE TF_1B_AlexFaustino;
-- PERFIS

CREATE ROLE ADIMINISTRADOR;
CREATE ROLE DESENVOLVEDOR;

-- USUARIOS
CREATE USER Cleiton IDENTIFIED BY '5h@rP#B3@m@k5!';
CREATE USER Jose IDENTIFIED BY '5hwsecwexcw0ck@';
CREATE USER Manoel IDENTIFIED BY '5h@rP1231ck53';

CREATE USER ANAMARIABRAGA IDENTIFIED BY 'uiyv@t67as';
CREATE USER JOHNLENNON IDENTIFIED BY 'asd2112@l@';
CREATE USER NALDO IDENTIFIED BY '@535gdte73h@';

-- PRIVILEGIOS
GRANT ALL PRIVILEGES ON TF_1B_AlexFaustino.* TO ADIMINISTRADOR;

GRANT SELECT ON TF_1B_AlexFaustino.CLIENTE TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.AVALIACAO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.AUTONOMO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.PAGAMENTO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.AREADEATUACAO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.atua TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.SERVICO TO DESENVOLVEDOR;
GRANT SELECT ON TF_1B_AlexFaustino.MENSALIDADE TO DESENVOLVEDOR;

GRANT ADIMINISTRADOR TO ADM, Jose, Manoel WITH ADMIN OPTION;


GRANT DESENVOLVEDOR TO ANAMARIABRAGA, JOHNLENNON, NALDO;

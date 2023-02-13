-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE CRIACAO (DDL)
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
--   29/01/2023 => Mudança de chave primaria em endereco cep -> idEndereco
--              => Adicao tabela avaliacao
--   			=> mudanca de nome no atributo numero -> numeroCartao e nome -> nomeTitular
--              => Adicao de ON DELETE e ON UPDATE nas restricoes de FOREIGN KEY
--   03/02/2023 => Criação da tabela MENSALIDADE
--              => Alteração nos atributos dataInicio e dataFim de serviço para dataHorainicio e dataHoraFim, DATE -> DATETIME
--              => Alteração no atributo dataDoPagamento tipo DATE para dataHoraDoPagamento tipo DATETIME
-- 
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 06 usuarios
-- ---------------------------------------------------------
CREATE DATABASE IF NOT EXISTS TF_1B_AlexFaustino;

USE TF_1B_AlexFaustino;

CREATE TABLE ENDERECO (
    idEndereco INT AUTO_INCREMENT,
    rua VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    cep INT(8) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    complemento VARCHAR(100),
    
    CONSTRAINT ENDERECO_PK PRIMARY KEY (idEndereco)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CLIENTE (
    cpf BIGINT(11),
    idEndereco INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    sexo ENUM('M','F'),
    dataDeNascimento DATE NOT NULL,
    diaDePreferenciaDePagamento INT NOT NULL,
    dataDeCriacaoDaConta DATE,
    numTelefone BIGINT(9),
    dddTelefone INT(2),
    
    CONSTRAINT CLIENTE_PK PRIMARY KEY (cpf),
    CONSTRAINT CLIENTE_ENDERECO_FK FOREIGN KEY (idEndereco)
		REFERENCES ENDERECO (idEndereco) 
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE AREADEATUACAO (
    idAreaDeAtuacao INT NOT NULL  AUTO_INCREMENT,
    descricao VARCHAR(100),
    nome VARCHAR(100) NOT NULL,
    
    CONSTRAINT AREADEATUACAO_FK PRIMARY KEY (idAreaDeAtuacao)
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE CARTAO (
    numeroCartao BIGINT(16) NOT NULL,
    nomeTitular VARCHAR(50) NOT NULL,
    mes INT NOT NULL,
    ano INT NOT NULL,
    
    CONSTRAINT CARTAO_FK PRIMARY KEY (numeroCartao)
)ENGINE = InnoDB;

CREATE TABLE AUTONOMO (
    cpf BIGINT(11),
    numeroDaConta INT NOT NULL,
    agencia INT NOT NULL,
    
    CONSTRAINT AUTONOMO_FK PRIMARY KEY (cpf),
    CONSTRAINT AUTONOMO_UK UNIQUE (agencia, numeroDaConta),
    CONSTRAINT AUTONOMO_CLIENTE_FK FOREIGN KEY (cpf)
		REFERENCES CLIENTE (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE SERVICO (
    idServico INT NOT NULL AUTO_INCREMENT,
    idAreaDeAtuacao INT NOT NULL,
    cpfCliente BIGINT(11) NOT NULL,
    cpfAutonomo BIGINT(11) NOT NULL,
    dataHoraInicio DATETIME NOT NULL,
    dataHoraFim DATETIME NOT NULL,
    descricao VARCHAR(100),
	autorizadoPeloCliente BOOLEAN NOT NULL DEFAULT FALSE,
    quantidadeDeAvisos INT NOT NULL DEFAULT 0,
    valor DECIMAL(7,2) NOT NULL,
    
    CONSTRAINT SERVICO_PK PRIMARY KEY (idServico),
    CONSTRAINT AGENDAMENTO_DATA_AUTONOMO UNIQUE KEY (dataHoraInicio, dataHoraFim, cpfAutonomo),
    CONSTRAINT SERVICO_AREAATUACAO_FK FOREIGN KEY (idAreaDeAtuacao)
		REFERENCES AREADEATUACAO (idAreaDeAtuacao)
			ON DELETE RESTRICT ON UPDATE CASCADE,
            
	CONSTRAINT SERVICO_AUTONOMO_FK FOREIGN KEY (cpfAutonomo)
		REFERENCES AUTONOMO (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE,
            
	CONSTRAINT SERVICO_CLIENTE_FK FOREIGN KEY (cpfCliente)
		REFERENCES CLIENTE (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE PAGAMENTO (
    idServico INT NOT NULL,
    numeroCartao BIGINT(16) NOT NULL,
    dataHoraDoPagamento DATETIME NOT NULL,
    
    CONSTRAINT PAGAMENTO_PK PRIMARY KEY (idServico),
    CONSTRAINT PAGAMENTO_SERVICO_FK FOREIGN KEY (idServico) 
		REFERENCES SERVICO (idServico)
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB;

CREATE TABLE AVALIACAO (
    idAvaliacao INT NOT NULL AUTO_INCREMENT,
    idServico INT NOT NULL,
    nota INT NOT NULL,
    descricao VARCHAR(200),
    
    CONSTRAINT AVALIACAO_PK PRIMARY KEY (idAvaliacao),
    CONSTRAINT AVALIACAO_SERVICO_FK FOREIGN KEY (idServico) 
		REFERENCES SERVICO (idServico)
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB AUTO_INCREMENT = 1;

CREATE TABLE atua (
    idAreaDeAtuacao INT NOT NULL,
    cpf BIGINT(11) NOT NULL,
    
	CONSTRAINT atua_AREADEATUCAO_FK FOREIGN KEY (idAreaDeAtuacao)
		REFERENCES AREADEATUACAO (idAreaDeAtuacao)
			ON DELETE RESTRICT ON UPDATE CASCADE,
            
	CONSTRAINT atua_AUTONOMO_FK FOREIGN KEY (cpf)
		REFERENCES AUTONOMO (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT atua_UK UNIQUE (idAreaDeAtuacao, cpf)
    
)ENGINE = InnoDB;

CREATE TABLE possui (
    cpf BIGINT(11) NOT NULL,
    numeroCartao BIGINT(16) NOT NULL,
    
    CONSTRAINT atua_CLIENTE_FK FOREIGN KEY (cpf)
		REFERENCES CLIENTE (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT possui_CARTAO_FK FOREIGN KEY (numeroCartao)
		REFERENCES CARTAO (numeroCartao)
			ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT atua_UK UNIQUE (cpf, numeroCartao)
)ENGINE = InnoDB;

CREATE TABLE MENSALIDADE (
    mes int NOT NULL,
    ano int NOT NULL,
    cpf BIGINT(11) NOT NULL,
    numeroCartao BIGINT(16) NOT NULL,
    valor DECIMAL(7,2) NOT NULL DEFAULT 49.99,
    
    CONSTRAINT MENSALIDADE_PK PRIMARY KEY (mes, ano, cpf),
    CONSTRAINT MENSALIDADE_AUTONOMO_PK FOREIGN KEY (cpf)
		REFERENCES AUTONOMO (cpf)
			ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT MENSALIDADE_CARTAO_PK FOREIGN KEY (numeroCartao)
		REFERENCES CARTAO (numeroCartao)
			ON DELETE RESTRICT ON UPDATE CASCADE
)ENGINE = InnoDB;

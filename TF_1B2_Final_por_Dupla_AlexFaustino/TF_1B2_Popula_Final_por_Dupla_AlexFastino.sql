-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE POPULAR (DML)
--
-- Data Criacao ...........: 24/01/2023
-- Autor(es) ..............: Gabriel Costa de Oliveira, Alex Gabriel Alves Faustino
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: TF_1B2_AlexFaustino
--
-- Ultimas Alteracoes
--   29/01/2023 => Adicao de dados da tabela avaliacao       
--   03/02/2023 => Adição de dados na tabela mensalidade, cartão e possui        
--   
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 02 usuarios
-- ---------------------------------------------------------

USE TF_1B2_AlexFaustino;


INSERT INTO ENDERECO (rua, numero, bairro, cep, cidade, estado, complemento) VALUES 
	('rua verde', 12, 'bairro verde', 78117300, 'verde lima', 'RO', 'do lado da vovô'),
    ('rua rosa', 23, 'bairro rosa', 72312104, 'rosa choque', 'RO', null),
    ('rua vermelha', 34, 'bairro vermelha', 69075520, 'vermelho sangue', 'RO', 'do lado da vovo'),
    ('rua preta', 62, 'bairro preta', 78088072, 'verde lima', 'RO', 'do lado da vovo'),
    ('rua azul', 43, 'bairro azul', 11346190, 'verde lima', 'RO', 'do lado da vovo'),
    ('rua ciano', 52, 'bairro ciano', 69903352, 'verde lima', 'RO', 'do lado da vovo');
 
INSERT INTO CLIENTE (cpf, idEndereco, nome, sexo, dddTelefone, numTelefone, dataDeNascimento, diaDePreferenciaDePagamento, dataDeCriacaoDaConta) VALUES
    (16292654117, 1, 'Maria Souza', 'F', null, null, '1980-01-01', 12,'2023-01-23'),
    (80237830760, 2, 'Miguel Márcio Bryan Corte Real','M', 22, 998755342, '1980-10-08', 23, '2023-01-23'),
    (20828533229, 3, 'Manuel Pedro Henrique Kauê Pires','M',19, 929378664, '1984-09-05', 30, '2023-01-23'),
    (31230435506, 4, 'Tatiane Giovanna da Luz','F',51, 982736432, '2000-08-03', 30,'2023-01-23'),
    (77991342166, 5, 'Mariah Larissa Moreira','F',22, 982236432, '2002-05-01', 30, '2023-01-23'),
    (12345678901, 4, 'João Silva','M', 22, 932545678, '1995-08-11', 30,'2023-01-23'),
    (64393293754, 2, 'Leonardo Mário Nogueira','M', 61, 928829177, '1990-01-01', 30, '2023-01-23'),
    (72795136970, 3, 'Mário Ricardo Caldeira','M', 21, 984521088, '1993-10-07', 30, '2023-01-23'),
    (45382226580, 4, 'Lara Fátima Barbosa','F', 62, 936667311, '2000-03-03', 30,'2023-01-23'),
    (23015975200, 5, 'Roberto Daniel Lucas da Luz','M', 12, 986072510, '2001-03-09', 30, '2023-01-23');
    
    
INSERT INTO AREADEATUACAO (descricao, nome) VALUES 
	('corte de cabelo', 'cabeleireiro'), 
    ('Educador fisico', 'personal'),
    ('tratamento de beleza e cosmético para as unhas', 'manicure'),
    ('motorista particular', 'motorista'),
    ('faz piadas', 'humorista');

INSERT INTO CARTAO (nomeTitular, numeroCartao, mes, ano) VALUES
	('Roberto Daniel Lucas da Luz', 5358896747528568, 12, 2032), 
    ('Leonardo Mário Nogueira', 5446386710880778, 4, 2032),
    ('João Silva', 5446385710880778, 1, 2030), 
	('Mariah Larissa Moreira', 5598911890315315, 2, 2030), 
	('Lara Fátima Barbosa', 5598911870315315, 4, 2028),
    ('João Silva', 5258589359636297, 5, 2030),
    ('Leonardo Mário Nogueira', 5503842734428887, 5, 2030),
    ('Mário Ricardo Caldeira', 5381199099723155, 5, 2030),
    ('Lara Fátima Barbosa', 5522648957945862, 5, 2030);
   
    
INSERT INTO AUTONOMO (cpf, agencia, numeroDaConta) VALUES
    (12345678901, 4, 12312),
    (64393293754, 2, 52345),
    (72795136970, 3, 64564),
    (45382226580, 4, 87645),
    (23015975200, 5, 23425);

INSERT INTO SERVICO (idAreaDeAtuacao, cpfCliente, cpfAutonomo, dataHoraInicio, dataHoraFim, descricao, valor, autorizadoPeloCliente) VALUES
	(1, 77991342166, 12345678901, '2023-01-12 10:00:00', '2023-01-13 11:20:00','pintura de cabelo',231, true), 
	(2, 31230435506, 64393293754, '2023-01-12 20:00:00', '2023-01-13 22:00:00','Criação rotina de treino',243, true), 
	(3, 20828533229, 72795136970, '2023-01-12 08:30:00', '2023-01-13 09:00:00','alongamento de unhas',5344, true), 
	(4, 80237830760, 45382226580, '2023-01-12 12:45:00', '2023-01-13 13:45:00','viagem de samambaia até o gama',23, true), 
	(5, 16292654117, 23015975200, '2023-01-12 16:15:00', '2023-01-13 17:15:00',null,454, true),
    (5, 16292654117, 23015975200, '2023-01-13 16:15:00', '2023-01-13 17:15:00','Segundo show',454, false);
     
INSERT INTO atua (idAreaDeAtuacao, cpf) VALUES
	(1, 12345678901),
    (2, 64393293754),
    (3, 72795136970),
    (4, 45382226580),
    (5, 23015975200);
    
INSERT INTO AVALIACAO (idServico, nota, descricao) VALUES
	( 1, 0, 'Atendimento pessimo, odiei'),
    ( 2, 4, 'Atendimento razoavel, recomendo'),
    ( 3, 5, 'Atendimento super rapido'),
    ( 4, 3, 'adorei, recomendo'),
    ( 5, 5, 'melhor experiencia da vida, recomendo');
    
INSERT INTO PAGAMENTO (idServico, numeroCartao, dataHoraDoPagamento) VALUES
	(1,5358896747528568, '2023-02-13 12:00:00'),
    (2,5446386710880778, '2023-02-13 12:00:00'),
    (3,5446385710880778, '2023-02-13 12:00:00'),
    (4,5598911870315315, '2023-02-13 12:00:00'),
    (5,5598911870315315, '2023-02-13 12:00:00');
    
INSERT INTO possui (cpf, numeroCartao) VALUES
	(23015975200 ,5358896747528568),
    (31230435506 ,5446386710880778),
    ( 20828533229,5446385710880778),
    ( 80237830760,5598911870315315),
    (16292654117 ,5598911870315315),
    (45382226580,5522648957945862),
    (72795136970,5381199099723155),
    (64393293754,5503842734428887),
    (12345678901,5258589359636297);
    
INSERT INTO MENSALIDADE (mes, ano, cpf, numeroCartao, valor) VALUES
	(01, 2023, 23015975200, 5358896747528568, 49.99),
    (01,2023,45382226580,5522648957945862, 49.99),
    (01,2023,72795136970,5381199099723155, 49.99),
    (01,2023,64393293754,5503842734428887, 49.99),
    (01,2023,12345678901,5258589359636297, 49.99);

    

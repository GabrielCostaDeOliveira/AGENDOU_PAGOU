-- ------------- <TrabalhoFinal> ---------------
--
--                    SCRIPT DE POPULAR (DML)
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
--   29/01/2023 => Adicao de dados da tabela avaliacao       
--   03/02/2023 => Adição de dados na tabela mensalidade, cartão e possui  
--   12/02/2023 => Adição de tuplas em todas as tabelas          
--   
-- PROJETO => 01 Base de Dados
--         => 11 Tabelas
--         => 02 perfis
-- 	       => 06 usuarios
-- ---------------------------------------------------------

USE TF_1B_AlexFaustino;


INSERT INTO ENDERECO (rua, numero, bairro, cep, cidade, estado, complemento) VALUES 
	('Avenida Guarapari', 12, 'Condados', 78117300, 'Guarapari', 'ES', 'portão preto'),
    ('Quadra 31', 23, 'Gurupi', 64091080, 'Gurupi', 'PI', null),
    ('4ª Travessa Santo Antonio', 34, 'Jacintinho', 57040508, 'Maceió', 'AL', 'esquina'),
    ('Rua Alberto Nepomuceno', 62, 'São Paulo', 88506565, 'Lages', 'SC', 'sobrado'),
    ('Praça Professor Álvaro Costa', 43, 'Henrique Jorge', 60525400, 'Fortaleza', 'CE', 'muro branco'),
    ('Travessa Santos', 52, 'COHAB', 51340211, 'Recife', 'PE', 'do lado da vovo'),
    ('Rua São Paulo', 45, 'Centro', 12345678, 'São Paulo', 'SP', 'Próximo ao parque'),
	('Avenida Rio de Janeiro', 123, 'Ipanema', 87654321, 'Rio de Janeiro', 'RJ', 'Apartamento 12'),
	('Rua Belo Horizonte', 67, 'Savassi', 78901234, 'Belo Horizonte', 'MG', 'Edifício Solar'),
	('Rua do Imperador', 289, 'Boa Viagem', 2165432, 'Recife', 'PE', 'Condomínio Mar do Norte'),
    ('Rua das Tulipas', 9, 'Cristo Rei', 78117318, 'Várzea Grande', 'Várzea Grande', 'portão preto'),
    ('Rua Isaura Parente', 89, 'Bosque', 49055430, 'Rio Branco', 'AC', 'Condomínio Mar do Norte'),
    ('Rua Marcello', 34, 'Boa Viagem', 69900472, 'Aracaju', 'SE', 'Condomínio Mar do Norte'),
    ('Avenida Brasil', 45, 'Getúlio Vargas', 49055430, 'Aracaju', 'SE', 'Condomínio Mar do Norte'),
    ('Avenida riberinha', 76, 'Centro da Serra', 29179476, 'Serra', 'ES', 'Condomínio Mar do Norte'),
    ('rua paralela sul', 65, 'Santa Mônica', 86079430, 'Londrina', 'PR', 'Condomínio Mar do Norte'),
    ('Avenida oeste', 12, 'Chácaras Caxingui', 06825025, 'Embu das Artes', 'SP', 'Condomínio Mar do Norte'),
    ('Rua jovem prudente', 54, 'Infraero', 68908838, 'Macapá', 'AP', 'Condomínio Mar do Norte'),
    ('Avenida camarões', 439, 'Boa Viagem', 98765432, 'Recife', 'PE', 'Condomínio Mar do Norte'),
	('Rua Salvador', 101, 'Barra', 76543210, 'Salvador', 'BA', 'Bloco A, apto. 32');
 
INSERT INTO CLIENTE (cpf, idEndereco, nome, sexo, dddTelefone, numTelefone, dataDeNascimento, diaDePreferenciaDePagamento, dataDeCriacaoDaConta) VALUES
    (16292654117, 1, 'Maria Souza', 'F', null, null, '1980-01-01', 12,'2023-01-23'),
    (80237830760, 2, 'Miguel Márcio Bryan Corte Real','M', 22, 998755342, '1980-10-08', 23, '2023-01-23'),
    (20828533229, 3, 'Manuel Pedro Henrique Kauê Pires','M',19, 929378664, '1984-09-05', 30, '2023-01-23'),
    (31230435506, 4, 'Tatiane Giovanna da Luz','F',51, 982736432, '2000-08-03', 30,'2023-01-23'),
    (77991342166, 5, 'Mariah Larissa Moreira','F',22, 982236432, '2002-05-01', 30, '2023-01-23'),
    (12345678901, 6, 'João Silva','M', 22, 932545678, '1995-08-11', 30,'2023-01-23'),
    (64393293754, 7, 'Leonardo Mário Nogueira','M', 61, 928829177, '1990-01-01', 5, '2023-01-23'),
    (72795136970, 8, 'Mário Ricardo Caldeira','M', 21, 984521088, '1993-10-07', 8, '2023-01-23'),
    (44382226580, 9, 'Lara Fátima Barbosa','F', 62, 936667311, '2000-03-03', 3,'2023-01-23'),
    (37466319556, 10, 'Mário Heitor Sales','M', 53, 981643449, '1999-04-02', 5,'2023-01-23'),
    (54766871650, 11, 'Victor Cauã da Rosa','M', 61, 943467311, '1986-01-08', 2,'2023-01-23'),
    (21219991082, 12, 'Arthur Otávio Daniel Lopes','M', 22, 982938282, '1999-02-07', 27,'2023-01-23'),
    (02297397097, 13, 'Aurora Simone Rodrigues','F', 82, 924648641, '1998-03-06', 30,'2023-01-23'),
    (37976594079, 14, 'Amanda Cristiane Nunes','F', 63, 997862432, '1997-04-05', 23,'2023-01-23'),
    (36978804037, 15, 'Yuri Victor Kevin Baptista','M', 64, 913248759, '1990-05-04', 7,'2023-01-23'),
    (36654504037, 16, 'Andrea Cecília Luiza Duarte','F', 62, 976833454, '1989-06-03', 5,'2023-01-23'),
    (66749445055, 17, 'Marina Josefa Baptista','F', 61, 912345445, '1987-07-03', 15,'2023-01-23'),
    (86373470024, 18, 'Nicolas Elias Gonçalves','M', 21, 992823922, '1987-08-02', 10,'2023-01-23'),
    (08351707058, 19, 'Lucas Lucca Assis','M', 22, 978934756, '2970-10-01', 20,'2023-01-23'),
    (86958425090, 20, 'Roberto Daniel Lucas da Luz','M', 12, 992376736, '2001-03-09', 02, '2023-01-23');
    
    
INSERT INTO AREADEATUACAO (descricao, nome) VALUES 
	('corte de cabelo', 'cabeleireiro'), 
    ('Educador fisico', 'personal'),
    ('tratamento de beleza e cosmético para as unhas', 'manicure'),
    ('motorista particular', 'motorista'),
    ('motorista caminhão grande porte', 'motorista caminhão'),
    ('Designer', 'Designer'),
    ('Tatuador', 'Tatuador'),
    ('Pintor de muros e paredes', 'Pintor'),
    ('Pedreiro casas, muros, predios', 'pedreiro'),
    ('faz piadas', 'humorista');

INSERT INTO CARTAO (nomeTitular, numeroCartao, mes, ano) VALUES
	('Roberto Daniel Lucas da Luz', 5358896747528568, 12, 2032), 
    ('Leonardo Mário Nogueira', 5446386710880778, 4, 2032),
    ('João Silva', 5446385710880748, 1, 2030), 
	('Mariah Larissa Moreira', 5598911890315315, 2, 2030), 
	('Lara Fátima Barbosa', 5598911870315315, 4, 2028),
    ('João Silva', 5258589359636297, 5, 2030),
    ('Leonardo Mário Nogueira', 345817690311361, 12, 2035),
    ('Mário Ricardo Caldeira', 5530062640663264, 11, 2033),
    ('Mário Heitor Sales', 5240082975622454, 10, 2031),
    ('Victor Cauã da Rosa', 4929291898380766, 9, 2024),
    ('Arthur Otávio Daniel Lopes', 4539620659922097, 9, 2025),
    ('Aurora Simone Rodrigues', 5970100300000083, 8, 2026),
    ('Amanda Cristiane Nunes', 6062822916014409, 7, 2027),
    ('Yuri Victor Kevin Baptista', 5970100300000067, 6, 2028),
    ('Andrea Cecília Luiza Duarte', 5970100300000018, 6, 2029),
    ('Marina Josefa Baptista', 5970100300000034, 5, 2025),
    ('Nicolas Elias Gonçalves', 5100010000002045, 4, 2026),
    ('Lucas Lucca Assis', 5970100300000109, 3, 2027),
    ('Nicolas Gonçalves', 5970100300000075, 2, 2028),
    ('Lara Fátima Barbosa', 5970100300000183, 1, 2029);
   
    
INSERT INTO AUTONOMO (cpf, agencia, numeroDaConta) VALUES
    (86958425090, 2, 12312),
    (08351707058, 2, 52345),
    (86373470024, 2, 64564),
    (66749445055, 2, 56756),
    (36654504037, 2, 45645),
    (36978804037, 2, 23435),
    (37976594079, 2, 56856),
    (02297397097, 2, 34534),
    (21219991082, 2, 75676),
    (54766871650, 2, 65435);

INSERT INTO SERVICO (idAreaDeAtuacao, cpfCliente, cpfAutonomo, dataHoraInicio, dataHoraFim, descricao, valor, autorizadoPeloCliente) VALUES
	(2, 16292654117, 08351707058, '2023-01-12 20:00:00', '2023-01-12 22:00:00','Criação rotina de treino',243, true), 
	(3, 80237830760, 66749445055, '2023-01-13 08:30:00', '2023-01-13 09:00:00','alongamento de unhas',5344, true), 
	(4, 20828533229, 02297397097, '2023-01-14 12:45:00', '2023-01-14 13:45:00','viagem de samambaia até o gama',23, true), 
	(5, 31230435506, 37976594079, '2023-01-16 16:15:00', '2023-01-16 17:15:00',null,90, true),
    (5, 77991342166, 21219991082, '2023-01-12 16:15:00', '2023-01-12 17:15:00',null,87, true),
    (6, 12345678901, 21219991082, '2023-02-18 16:15:00', '2023-02-18 17:15:00',null,65, true),
    (7, 64393293754, 54766871650, '2023-02-16 16:15:00', '2023-02-16 17:15:00',null,43, true),
    (7, 72795136970, 54766871650, '2023-02-14 16:15:00', '2023-02-14 17:15:00',null,122, true),
    (8, 44382226580, 21219991082, '2023-02-12 16:15:00', '2023-02-12 17:15:00',null,342, true),
    (5, 37466319556, 54766871650, '2023-02-11 16:15:00', '2023-02-11 17:15:00','Segundo show',44, false);
     
INSERT INTO atua (idAreaDeAtuacao, cpf) VALUES
	(1, 54766871650), 
	(2, 08351707058), 
	(3, 66749445055), 
	(4, 02297397097), 
	(5, 37976594079),
    (5, 21219991082),
    (6, 21219991082),
    (7, 02297397097),
    (7, 54766871650),
    (8, 21219991082),
    (5, 54766871650);
     
    
INSERT INTO AVALIACAO (idServico, nota, descricao) VALUES
	( 1, 0, 'Atendimento pessimo, odiei'),
    ( 2, 4, 'Atendimento razoavel, recomendo'),
    ( 3, 5, 'Atendimento super rapido'),
    ( 4, 3, 'adorei'),
	( 5, 6, 'muito bom'),
	( 6, 2, 'não recomendo'),
	( 7, 8, null),
	( 8, 9, 'adorei, recomendo'),
    ( 9, 10, 'adorei, recomendo'),
    ( 10, 5, 'melhor experiencia da vida, recomendo');
    
INSERT INTO PAGAMENTO (idServico, numeroCartao, dataHoraDoPagamento) VALUES
	(1,5358896747528568, '2023-02-13 12:00:00'),
    (2,5446386710880778, '2023-02-13 08:00:00'),
    (3,5446385710880748, '2023-02-13 09:00:00'),
    (4,5598911890315315, '2023-02-13 10:00:00'),
    (5, 5598911870315315, '2023-02-13 11:00:00'),
    (6,5258589359636297, '2023-02-13 16:00:00'),
    (7,345817690311361, '2023-02-13 15:00:00'),
    (8,5530062640663264, '2023-02-13 14:00:00'),
    (9,5240082975622454, '2023-02-12 13:00:00'),
    (10,4929291898380766, '2023-02-11 11:00:00');
    
INSERT INTO possui (cpf, numeroCartao) VALUES
	(16292654117, 5358896747528568),
    (80237830760, 5446386710880778),
    (20828533229, 5446385710880748),
    (31230435506, 5598911890315315),
    (77991342166, 5598911870315315),
    (12345678901, 5258589359636297),
    (64393293754, 345817690311361),
    (72795136970, 5530062640663264),
    (44382226580, 5240082975622454),
    (37466319556, 4929291898380766),
    (54766871650, 4539620659922097),
    (21219991082, 5970100300000083),
    (02297397097, 6062822916014409),
    (37976594079, 5970100300000067),
    (36978804037, 5970100300000018),
    (36654504037, 5970100300000034),
    (66749445055, 5100010000002045),
    (86373470024, 5970100300000109),
    (08351707058, 5970100300000075),
    (86958425090, 5970100300000183);
    
INSERT INTO MENSALIDADE (mes, ano, cpf, numeroCartao, valor) VALUES
	(01, 2023, 54766871650, 4539620659922097, 49.99),
    (01,2023,21219991082,5970100300000083, 49.99),
    (01,2023,02297397097,6062822916014409, 49.99),
    (01,2023,37976594079,5970100300000067, 49.99),
    (01,2023,36978804037,5970100300000018, 49.99),
    (01,2023,36654504037,5970100300000034, 49.99),
    (01,2023,66749445055,5100010000002045, 49.99),
    (01,2023,86373470024,5970100300000109, 49.99),
    (01,2023,08351707058,5970100300000075, 49.99),
    (01,2023,86958425090,5970100300000183, 49.99);

    

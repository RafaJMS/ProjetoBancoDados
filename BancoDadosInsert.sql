-- Populando a tabela de Entidades
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('EMURB', 'P�blica', 'Rua da EMURB, 123', 'contato@emurb.gov');
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('EMSURB', 'P�blica', 'Avenida da EMSURB, 456', 'contato@emsurb.gov');
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('SMS', 'P�blica', 'Pra�a da SMS, 789', 'contato@sms.gov');

-- Populando a tabela de Usu�rios (valores fict�cios)
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('Jo�o Silva', 'joao.silva@example.com', 'senha123', 'Administrador', 1);
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('Maria Souza', 'maria.souza@example.com', 'senha456', 'Usu�rio', 2);
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('Pedro Santos', 'pedro.santos@example.com', 'senha789', 'Usu�rio', 3);

-- Populando a tabela de Licitacoes (valores fict�cios)
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-01-01', 'Concorr�ncia', 1, 100000.00, 'Ativo');
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-02-15', 'Tomada de Pre�os', 2, 150000.00, 'Ativo');
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-03-30', 'Convite', 3, 200000.00, 'Ativo');

-- Populando a tabela de Lotes (valores fict�cios)
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (1, 'Lote 1 - Servi�os de limpeza', 5000.00);
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (2, 'Lote 2 - Materiais de escrit�rio', 7500.00);
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (3, 'Lote 3 - Manuten��o de pra�as', 10000.00);

-- Populando a tabela de Fornecedores (valores fict�cios)
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecedor XPTO', '123456789', 'Rua Principal, 123', '(99) 9999-9999', 1);
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecedor ABC Ltda', '987654321', 'Avenida das Flores, 456', '(88) 8888-8888', 2);
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecimento & Servi�os S/A', '543216789', 'Pra�a Central, 789', '(77) 7777-7777', 3);

-- Populando a tabela de Objetos (valores fict�cios)
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Servi�os de limpeza', 'Servi�os', 5000.00, 10, 'Objeto para limpeza de ruas', 1, 1);
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Fornecimento de materiais de escrit�rio', 'Materiais de Escrit�rio', 7500.00, 15, 'Objeto para fornecimento de papelaria', 2, 2);
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Manuten��o de pra�as', 'Servi�os', 10000.00, 20, 'Objeto para manuten��o de �reas verdes', 3, 3);

-- Populando a tabela de Contratos (valores fict�cios)
INSERT INTO Contratos (data_inicio, data_termino, valor, status, id_entidade, id_fornecedor, id_objeto) VALUES ('2023-01-15', '2024-01-15', 5000.00, 'Ativo', 1, 1, 1);
INSERT INTO Contratos (data_inicio, data_termino, valor, status, id_entidade, id_fornecedor, id_objeto) VALUES ('2023-02-28', '2024-02-28', 7500.00, 'Ativo', 2, 2, 2);
INSERT INTO Contratos (data_inicio, data_termino, valor, status, id_entidade, id_fornecedor, id_objeto) VALUES ('2023-04-10', '2024-04-10', 10000.00, 'Ativo', 3, 3, 3);

-- Selecionando todos os dados da tabela Contratos
SELECT * FROM Contratos;

-- Selecionando todos os dados da tabela Fornecedores
SELECT * FROM Fornecedores;

-- Selecionando todos os dados da tabela Lotes
SELECT * FROM Lotes;

-- Selecionando todos os dados da tabela Objetos
SELECT * FROM Objetos;

-- Selecionando todos os dados da tabela Licitacoes
SELECT * FROM Licitacoes;

-- Selecionando todos os dados da tabela Usuarios
SELECT * FROM Usuarios;

-- Selecionando todos os dados da tabela Entidades
SELECT * FROM Entidades;

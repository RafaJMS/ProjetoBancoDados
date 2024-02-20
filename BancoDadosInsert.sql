-- Populando a tabela de Entidades
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('EMURB', 'Pública', 'Rua da EMURB, 123', 'contato@emurb.gov');
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('EMSURB', 'Pública', 'Avenida da EMSURB, 456', 'contato@emsurb.gov');
INSERT INTO Entidades (nome, tipo, endereco, contato) VALUES ('SMS', 'Pública', 'Praça da SMS, 789', 'contato@sms.gov');

-- Populando a tabela de Usuários (valores fictícios)
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('João Silva', 'joao.silva@example.com', 'senha123', 'Administrador', 1);
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('Maria Souza', 'maria.souza@example.com', 'senha456', 'Usuário', 2);
INSERT INTO Usuarios (nome, email, senha, nivel_permissao, id_entidade) VALUES ('Pedro Santos', 'pedro.santos@example.com', 'senha789', 'Usuário', 3);

-- Populando a tabela de Licitacoes (valores fictícios)
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-01-01', 'Concorrência', 1, 100000.00, 'Ativo');
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-02-15', 'Tomada de Preços', 2, 150000.00, 'Ativo');
INSERT INTO Licitacoes (data_publicacao, modalidade, id_entidade, valor_estimado, status) VALUES ('2023-03-30', 'Convite', 3, 200000.00, 'Ativo');

-- Populando a tabela de Lotes (valores fictícios)
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (1, 'Lote 1 - Serviços de limpeza', 5000.00);
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (2, 'Lote 2 - Materiais de escritório', 7500.00);
INSERT INTO Lotes (id_licitacao, descricao, ValorEstimadoTotal) VALUES (3, 'Lote 3 - Manutenção de praças', 10000.00);

-- Populando a tabela de Fornecedores (valores fictícios)
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecedor XPTO', '123456789', 'Rua Principal, 123', '(99) 9999-9999', 1);
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecedor ABC Ltda', '987654321', 'Avenida das Flores, 456', '(88) 8888-8888', 2);
INSERT INTO Fornecedores (nome, doc_identificacao, endereco, contato, id_entidade) VALUES ('Fornecimento & Serviços S/A', '543216789', 'Praça Central, 789', '(77) 7777-7777', 3);

-- Populando a tabela de Objetos (valores fictícios)
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Serviços de limpeza', 'Serviços', 5000.00, 10, 'Objeto para limpeza de ruas', 1, 1);
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Fornecimento de materiais de escritório', 'Materiais de Escritório', 7500.00, 15, 'Objeto para fornecimento de papelaria', 2, 2);
INSERT INTO Objetos (descricao, categoria, valorEstimado, quantidade, observacoes, id_lote, id_fornecedor) VALUES ('Manutenção de praças', 'Serviços', 10000.00, 20, 'Objeto para manutenção de áreas verdes', 3, 3);

-- Populando a tabela de Contratos (valores fictícios)
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

create database BancoDadosCL

use BancoDadosCL

CREATE TABLE Entidades (
    id_entidade integer PRIMARY KEY IDENTITY(1, 1),
    nome varchar(255),
    tipo varchar(255) DEFAULT 'Pública',
    endereco text,
    contato text
);
GO

CREATE TABLE Usuarios (
    id_usuario integer PRIMARY KEY IDENTITY(1, 1),
    nome varchar(255),
    email varchar(255),
    senha varchar(255),
    nivel_permissao varchar(255) DEFAULT 'Baixo',
    id_entidade integer
);
GO

CREATE TABLE Licitacoes (
    id_licitacao integer PRIMARY KEY IDENTITY(1, 1),
    data_publicacao date,
    modalidade varchar(255),
    id_entidade integer,
    valor_estimado decimal(20,5),
    status varchar(20) DEFAULT 'Ativo'
);
GO

CREATE TABLE Objetos (
    id_objeto integer PRIMARY KEY IDENTITY(1, 1),
    descricao TEXT NOT NULL,
    categoria VARCHAR(255),
    valorEstimado DECIMAL(18,2),
    quantidade integer,
    observacoes TEXT,
    id_lote integer,
    id_fornecedor integer
);
GO

CREATE TABLE Lotes (
    id_lote integer PRIMARY KEY IDENTITY(1, 1),
    id_licitacao INT,
    descricao TEXT NOT NULL,
    ValorEstimadoTotal DECIMAL(18, 2)
);
GO

CREATE TABLE Fornecedores (
    id_fornecedor integer PRIMARY KEY IDENTITY(1, 1),
    nome varchar(255),
    tipo varchar(255) DEFAULT 'Jurídica',
    doc_identificacao varchar(255),
    endereco varchar(255),
    contato varchar(255),
    id_entidade integer
);
GO

CREATE TABLE Contratos (
    id_contrato integer PRIMARY KEY IDENTITY(1, 1),
    data_inicio date,
    data_termino date,
    valor decimal(20,5),
    status varchar(20) DEFAULT 'Ativo',
    id_entidade integer,
    id_fornecedor integer,
    id_objeto integer
);
GO

ALTER TABLE Usuarios
ADD CONSTRAINT FK_Usuarios_Entidades
FOREIGN KEY (id_entidade) REFERENCES Entidades(id_entidade);

ALTER TABLE Licitacoes
ADD CONSTRAINT FK_Licitacoes_Entidades
FOREIGN KEY (id_entidade) REFERENCES Entidades(id_entidade);

ALTER TABLE Objetos
ADD CONSTRAINT FK_Objetos_Lotes
FOREIGN KEY (id_lote) REFERENCES Lotes(id_lote);

ALTER TABLE Objetos
ADD CONSTRAINT FK_Objetos_Fornecedores
FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor);

ALTER TABLE Lotes
ADD CONSTRAINT FK_Lotes_Licitacoes
FOREIGN KEY (id_licitacao) REFERENCES Licitacoes(id_licitacao);

ALTER TABLE Contratos
ADD CONSTRAINT FK_Contratos_Entidades
FOREIGN KEY (id_entidade) REFERENCES Entidades(id_entidade);

ALTER TABLE Contratos
ADD CONSTRAINT FK_Contratos_Fornecedores
FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores(id_fornecedor);

ALTER TABLE Contratos
ADD CONSTRAINT FK_Contratos_Objetos
FOREIGN KEY (id_objeto) REFERENCES Objetos(id_objeto);
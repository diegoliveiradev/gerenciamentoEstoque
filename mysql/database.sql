DROP DATABASE IF EXISTS gerenciamentoEstoque;
CREATE DATABASE gerenciamentoEstoque;
USE gerenciamentoEstoque;

CREATE TABLE unidades_medida (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(10) NOT NULL
);

CREATE TABLE fornecedores (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(15) NOT NULL
);

CREATE TABLE categorias (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL
);

CREATE TABLE produtos (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    preco_unitario DECIMAL(4, 2) NOT NULL,
    quantidade_estoque DECIMAL(10, 2) NOT NULL,
    quantidade_minima DECIMAL(10, 2) NOT NULL,
    quantidade_maxima DECIMAL(10, 2) NOT NULL,
    quantidade_venda INT NOT NULL,
    unidade_medida_id INT NOT NULL,
    categoria_id INT NOT NULL,
    fornecedor_id INT NOT NULL,
    data_validade DATE NOT NULL,

    CONSTRAINT fk_unidades_medidas FOREIGN KEY (unidade_medida_id) REFERENCES unidades_medida(id), 
    CONSTRAINT fk_fornecedores FOREIGN KEY (fornecedor_id) REFERENCES fornecedores(id), 
    CONSTRAINT fk_categorias FOREIGN KEY (categoria_id) REFERENCES categorias(id) 
);
/* 
CAMPOS categorias
   id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL
*/

INSERT INTO categorias (nome) VALUES
('eletrônicos'),
('alimentos'),
('Bebidas'),
('higienePessoal'),
('Limpeza'),
('PetShop');

/* 
CAMPOS fornecedores
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(11) NOT NULL
*/
INSERT INTO fornecedores (nome, endereco, telefone) VALUES
('Ante Ipsum LLC', 'Rua das Flores, 123', '(11) 99999-9999'),
('At Sem Molestie Ltd', 'Avenida Brasil, 456', '(21) 88888-8888'),
('Mauris Eu Elit Corp.', 'Rua da Praia, 789', '(51) 77777-7777'),
('Ante Vivamus Non Consulting', 'Rua do Comércio, 321', '(31) 66666-6666'),
('Eget Mollis Foundation', 'Rua dos Coqueiros, 555', '(83) 55555-5555'),
('Neque Venenatis Corporation', 'Avenida das Palmeiras, 654', '(92) 44444-4444'),
('Donec Corp.', 'Rua do Sol, 987', '(85) 33333-3333'),
('Phasellus Limited', 'Rua do Ouro, 753', '(17) 22222-2222'),
('Nonummy Inc.', 'Avenida da Liberdade, 246', '(98) 11111-1111'),
('At Nisi Cum PC', 'Rua dos Cravos, 345', '(27) 55555-5555'),
('Velit Sed Foundation', 'Avenida dos Lírios, 678', '(84) 66666-6666'),
('Habitant Morbi LLP', 'Rua das Acácias, 901', '(65) 77777-7777'),
('Vivamus Corporation', 'Avenida das Rosas, 234', '(92) 88888-8888'),
('Parturient Montes Ltd', 'Rua dos Ipês, 567', '(27) 99999-9999'),
('Ad Litora Torquent Corp.', 'Rua das Violetas, 890', '(11) 77777-7777'),
('Odio Phasellus At Corporation', 'Avenida das Orquídeas, 1234', '(19) 66666-6666'),
('Ornare Lectus Institute', 'Rua das Azaleias, 567', '(85) 55555-5555'),
('Ipsum Nunc Id Limited', 'Avenida das Bromélias, 789', '(31) 44444-4444'),
('Ut Sagittis LLC', 'Rua dos Jasmins, 345', '(21) 33333-3333'),
('Dictum Cursus LLP', 'Avenida das Hortênsias, 678', '(83) 22222-2222'),
('Consequat Dolor Vitae Inc.', 'Rua das Magnólias, 901', '(51) 11111-1111'),
('Nascetur Ridiculus Consulting', 'Avenida das Margaridas, 234', '(98) 88888-8888'),
('Pede Corporation', 'Rua das Papoulas, 567', '(31) 77777-7777'),
('Justo Nec PC', 'Avenida das Camélias, 890', '(11) 66666-6666'),
('Aenean Massa Integer Incorporated', 'Rua das Begônias, 1234', '(21) 99999-9999');

/* 
CAMPOS unidades_medida
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(10) NOT NULL
*/

INSERT INTO unidades_medida (nome) VALUES ('kg');
INSERT INTO unidades_medida (nome) VALUES ('g');
INSERT INTO unidades_medida (nome) VALUES ('l');
INSERT INTO unidades_medida (nome) VALUES ('ml');

/*
CAMPOS produtos
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL,
    unid_medida_id INT NOT NULL,
    qtd_minima DECIMAL(10, 2) NOT NULL,
    qtd_maxima DECIMAL(10, 2) NOT NULL,
    data_validade DATE NOT NULL,
    categoria_id INT NOT NULL,
    fornecedor_id INT NOT NULL,
    qtd_produto DECIMAL(10, 2) NOT NULL,
    preco_produto DECIMAL(4, 2) NOT NULL,
    qtd_venda INT NOT NULL,
*/

INSERT INTO produtos (nome, descricao, preco_unitario, quantidade_estoque, quantidade_minima, quantidade_maxima, quantidade_venda, unidade_medida_id, categoria_id, fornecedor_id, data_validade) 
VALUES 
('Arroz', 'Arroz tipo 1', 5.50, 50.00, 5.00, 100.00, 30, 1, 2, 1, '2024-01-01'),
('Feijão', 'Feijão carioca', 7.00, 30.00, 3.00, 80.00, 20, 1, 2, 1, '2023-12-31'),
('Sabonete', 'Sabonete líquido', 2.50, 100.00, 10.00, 200.00, 40, 4, 3, 2, '2025-01-01'),
('Shampoo', 'Shampoo para cabelos oleosos', 10.00, 80.00, 5.00, 150.00, 10, 4, 3, 2, '2024-08-01'),
('Desinfetante', 'Desinfetante de pinho', 4.50, 60.00, 10.00, 100.00, 5, 3, 5, 3, '2023-10-01'),
('Lâmina de barbear', 'Lâmina de barbear com 3 unidades', 12.00, 40.00, 5.00, 80.00, 30, 2, 1, 4, '2024-05-01'),
('Biscoito', 'Biscoito recheado de chocolate', 3.50, 120.00, 15.00, 250.00, 10, 1, 2, 6, '2023-11-01');

INSERT INTO produtos (nome, descricao, preco_unitario, quantidade_estoque, quantidade_minima, quantidade_maxima, quantidade_venda, unidade_medida_id, categoria_id, fornecedor_id, data_validade) 
VALUES 
('Leite', 'Leite integral', 2.80, 80.00, 5.00, 150.00, 10, 1, 2, 7, '2023-10-15'),
('Pão', 'Pão de forma integral', 4.50, 60.00, 10.00, 100.00, 20, 1, 2, 8, '2023-09-20'),
('Sabão em pó', 'Sabão em pó para roupas', 8.00, 50.00, 5.00, 80.00, 14, 4, 3, 9, '2024-02-01'),
('Condicionador', 'Condicionador para cabelos secos', 12.50, 70.00, 5.00, 120.00, 10, 4, 3, 10, '2024-10-01'),
('Água sanitária', 'Água sanitária com cloro ativo', 3.00, 90.00, 10.00, 150.00, 5, 3, 5, 11, '2023-08-01'),
('Papel higiênico', 'Papel higiênico com 4 rolos', 6.00, 100.00, 15.00, 200.00, 10, 2, 1, 12, '2024-03-01'),
('Chocolate', 'Barra de chocolate ao leite', 5.00, 120.00, 20.00, 250.00, 30, 1, 2, 13, '2023-12-01');
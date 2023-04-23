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
('Arroz', 'Arroz tipo 1', 5.50, 50.00, 5.00, 100.00, 0, 1, 2, 1, '2024-01-01'),
('Feijão', 'Feijão carioca', 7.00, 30.00, 3.00, 80.00, 0, 1, 2, 1, '2023-12-31'),
('Sabonete', 'Sabonete líquido', 2.50, 100.00, 10.00, 200.00, 0, 4, 3, 2, '2025-01-01'),
('Shampoo', 'Shampoo para cabelos oleosos', 10.00, 80.00, 5.00, 150.00, 0, 4, 3, 2, '2024-08-01'),
('Desinfetante', 'Desinfetante de pinho', 4.50, 60.00, 10.00, 100.00, 0, 3, 5, 3, '2023-10-01'),
('Lâmina de barbear', 'Lâmina de barbear com 3 unidades', 12.00, 40.00, 5.00, 80.00, 0, 2, 1, 4, '2024-05-01'),
('Biscoito', 'Biscoito recheado de chocolate', 3.50, 120.00, 15.00, 250.00, 0, 1, 2, 6, '2023-11-01');
use vava_doces;

-- TABELAS DE DOMÍNIO
INSERT INTO `categoria` (`id`, `nome`) VALUES
(1, 'Bolos'),
(2, 'Doces Finos'),
(3, 'Sobremesas de Pote'),
(4, 'Brownies'),
(5, 'Cookies'),
(6, 'Bebidas');

INSERT INTO `formaPagamento` (`id`, `nome`) VALUES
(1, 'PIX'),
(2, 'Dinheiro'),
(3, 'Débito'),
(4, 'Crédito');

INSERT INTO `tipoQuantidade` (`id`, `tipo`) VALUES
(1, 'Inteiro'),
(2, 'Decimal');

INSERT INTO `tipoUsuario`(`nome`) VALUES ('Cliente'),('Administrador');

INSERT INTO `status` (`id`, `nome`) VALUES
(1, 'Pendente'),
(2, 'Concluído'),
(3, 'Em Preparo'),
(4, 'Enviado'),
(5, 'Cancelado');


-- DADOS FICTÍCIOS
INSERT INTO `usuario` (`id`, `cpf`, `nome`, `endereco`, `enderecoNumero`, `complemento`, `cep`, `email`, `senha`, `telefone`, `tipoId`) VALUES
(1, '11111111111', 'Fulano da Silva 1', 'Rua Imaginaria 1', '123', 'Apto 101', '11111111', 'fulano1.silva@email.com', 'senha123', '11111111111', 1),
(2, '22222222222', 'Ciclana Souza 2', 'Avenida Inexistente 2', '456', 'Casa 2', '22222222', 'ciclana2.souza@email.com', 'senha456', '11111111111', 1),
(3, '33333333333', 'Beltrano Oliveira 3', 'Travessa Fantasma 3', '789', '', '33333333', 'beltrano3.oliveira@email.com', 'senha789', '11111111111', 1),
(4, '44444444444', 'Josefina Costa 4', 'Alameda Virtual 4', '1011', 'Sala 3', '44444444', 'josefina4.costa@email.com', 'senhaabc', '11111111111', 1),
(5, '55555555555', 'Antonio Pereira 5', 'Praça Irreal 5', '1213', '', '55555555', 'antonio5.pereira@email.com', 'senha_def','11111111111', 1),
(6, '66666666666', 'Mariana Almeida 6', 'Estrada Ficticia 6', '1415', 'Bloco C', '66666666', 'mariana6.almeida@email.com', 'senha_ghi', '11111111111', 1),
(7, '77777777777', 'Lucas Santos 7', 'Rua dos Sonhos 7', '1617', 'Fundos', '77777777', 'lucas7.santos@email.com', 'senha_jkl', '11111111111', 1),
(8, '88888888888', 'Fernanda Lima 8', 'Avenida da Imaginação 8', '1819', '', '88888888', 'fernanda8.lima@email.com', 'senha_mno', '11111111111', 1),
(9, '99999999999', 'Rafael Rocha 9', 'Viela Escondida 9', '2021', 'Casa da Frente', '99999999', 'rafael9.rocha@email.com', 'senha_pqr', '11111111111', 1),
(10, '99654399999', 'Rafael Rocha 9', 'Viela Escondida 9', '2021', 'Casa da Frente', '94599999', 'rafae20.rocha@email.com', 'senha_pqr', '11114411111', 1),
(11, '00456700000', 'Administrador', 'Rua 404', '404', 'Apto 505', '00000000', 'admin@gmail.com', '123', '11112345111', 2);

-- PRODUTOS – dados coerentes
DELETE FROM produto; -- limpa tabela antes

INSERT INTO produto
(nome, categoriaId, valor, descricao, nomeImagem, tipoQuantidadeId) VALUES
('Bolo de Chocolate Gourmet',      1, ROUND(RAND()*60 + 40,2), 'Bolo de massa fofa com recheio e cobertura de ganache de chocolate meio-amargo.',      'imagens/bolo_chocolate.png',          1),
('Bolo Red Velvet',                1, ROUND(RAND()*60 + 45,2), 'Clássico bolo vermelho com creme de cream-cheese.',                                   'imagens/bolo_red_velvet.png',         1),
('Bolo de Cenoura com Brigadeiro', 1, ROUND(RAND()*50 + 35,2), 'Bolo de cenoura macio coberto com brigadeiro cremoso.',                               'imagens/bolo_cenoura.png',            1),
('Bolo Chantilly & Morangos',      1, ROUND(RAND()*65 + 45,2), 'Camadas de pão-de-ló, chantilly e morangos frescos.',                                   'imagens/bolo_morango.png',            1),
('Bolo de Pistache',               1, ROUND(RAND()*70 + 50,2), 'Bolo sofisticado com creme de pistache e cobertura crocante.',                         'imagens/bolo_pistache.png',           1),
('Bolo KitKat',                    1, ROUND(RAND()*70 + 55,2), 'Bolo de chocolate decorado com barras de KitKat e M&M’s.',                             'imagens/bolo_kitkat.png',             1),
('Bolo Limão Siciliano',           1, ROUND(RAND()*55 + 35,2), 'Bolo refrescante com creme suave de limão siciliano.',                                 'imagens/bolo_limao.png',              1),
('Naked Cake Frutas Vermelhas',    1, ROUND(RAND()*75 + 55,2), 'Naked cake recheado com creme leve e frutas vermelhas.',                               'imagens/naked_cake.png',              1),

('Brigadeiro Gourmet',             2, ROUND(RAND()*2  + 3 ,2), 'Clássico brigadeiro feito com chocolate 70% cacau.',                                   'imagens/brigadeiro.png',              1),
('Beijinho de Coco',               2, ROUND(RAND()*2  + 3 ,2), 'Docinho de leite condensado com coco ralado e cravo.',                                 'imagens/beijinho.png',                1),
('Trufa Meio Amargo',              2, ROUND(RAND()*4  + 4 ,2), 'Trufa coberta com cacau em pó e recheio cremoso.',                                     'imagens/trufa.png',                   1),
('Mini Cheesecake Frutas',         2, ROUND(RAND()*6  + 6 ,2), 'Base crocante, creme de queijo e calda de frutas vermelhas.',                          'imagens/mini_cheesecake.png',         1),
('Macaron Framboesa',              2, ROUND(RAND()*3  + 5 ,2), 'Macaron crocante com recheio suave de framboesa.',                                     'imagens/macaron.png',                 1),
('Tartelete de Limão',             2, ROUND(RAND()*6  + 6 ,2), 'Mini tarte de massa doce com curd de limão e merengue.',                                'imagens/tartelete_limao.png',         1),
('Bombom Ferrero Caseiro',         2, ROUND(RAND()*4  + 5 ,2), 'Bombom de avelã envolto em chocolate e wafer crocante.',                               'imagens/bombom_ferrero.png',          1),

('Pavê de Chocolate no Pote',      3, ROUND(RAND()*8  + 10,2), 'Camadas de creme, biscoito e ganache no pote individual.',                            'imagens/pave_pote.png',               1),
('Banoffee no Pote',               3, ROUND(RAND()*8  + 10,2), 'Sobremesa de banana, doce de leite e chantilly no pote.',                              'imagens/banoffee_pote.png',           1),
('Mousse de Maracujá',             3, ROUND(RAND()*6  + 8 ,2), 'Mousse aerado de maracujá com calda de fruta fresca.',                                 'imagens/mousse_maracuja.png',         1),
('Tiramisù no Pote',               3, ROUND(RAND()*9  + 12,2), 'Clássico italiano com mascarpone e café em porção individual.',                       'imagens/tiramisu_pote.png',           1),
('Pudim de Leite',                 3, ROUND(RAND()*7  + 8 ,2), 'Tradicional pudim de leite condensado com calda de caramelo.',                        'imagens/pudim_pote.png',              1),
('Brownie no Pote',                3, ROUND(RAND()*8  + 10,2), 'Camadas de brownie, brigadeiro e ganache em pote.',                                   'imagens/brownie_pote.png',            1),

('Brownie Tradicional',            4, ROUND(RAND()*6  + 7 ,2), 'Brownie denso de chocolate meio-amargo.',                                             'imagens/brownie.png',                 1),
('Brownie com Nutella',            4, ROUND(RAND()*7  + 8 ,2), 'Brownie recheado e coberto com creme de avelã.',                                       'imagens/brownie_nutella.png',         1),
('Blondie de Chocolate Branco',    4, ROUND(RAND()*6  + 7 ,2), 'Versão clara do brownie com gotas de chocolate branco.',                              'imagens/blondie.png',                 1),
('Brownie Caramelo Salgado',       4, ROUND(RAND()*7  + 8 ,2), 'Brownie com cobertura de caramelo salgado artesanal.',                                 'imagens/brownie_caramelo.png',        1),

('Cookie Chocolate Chip',          5, ROUND(RAND()*3  + 4 ,2), 'Cookie amanteigado recheado com gotas de chocolate.',                                  'imagens/cookie_chip.png',             1),
('Cookie Red Velvet',              5, ROUND(RAND()*3  + 4 ,2), 'Cookie macio sabor red velvet com gotas de chocolate branco.',                         'imagens/cookie_redvelvet.png',        1),
('Cookie M&M’s',                   5, ROUND(RAND()*3  + 4 ,2), 'Cookie crocante recheado de confeitos coloridos.',                                     'imagens/cookie_mms.png',              1),
('Cookie Aveia & Passas',          5, ROUND(RAND()*2  + 3 ,2), 'Cookie funcional com aveia, canela e passas.',                                         'imagens/cookie_aveia.png',            1),
('Cookie Double Chocolate',        5, ROUND(RAND()*3  + 4 ,2), 'Cookie intenso com massa e gotas de chocolate escuro.',                                'imagens/cookie_double.png',           1),

('Milkshake de Chocolate 500ml',   6, ROUND(RAND()*4  + 6 ,2), 'Milkshake cremoso de sorvete de chocolate com chantilly.',                           'imagens/milkshake_choc.png',          1),
('Cappuccino Gelado 300ml',        6, ROUND(RAND()*3  + 5 ,2), 'Bebida gelada de café espresso com leite e espuma.',                                   'imagens/cappuccino_gelado.png',       1),
('Suco Natural de Morango 300ml',  6, ROUND(RAND()*2  + 4 ,2), 'Suco 100% morango sem adição de açúcar.',                                             'imagens/suco_morango.png',            1);

-- USUARIO CARRINHO – 30 linhas
DELETE FROM usuarioCarrinho; -- opcional
INSERT INTO usuarioCarrinho (usuarioId, produtoId, quantidade, tipoQuantidadeId) VALUES
(1,  1,  1.25, 1),
(2,  2,  2,    1),
(3,  5,  1,    1),
(4,  6,  0.80, 1),
(5,  7,  3,    1),
(6,  9,  1.50, 1),
(7, 12,  2,    1),
(8, 14,  0.90, 1),
(9, 15,  4,    1),
(10,18,  2,    1),
(1, 20,  1.20, 1),
(2, 22,  0.75, 1),
(3, 23,  1,    1),
(4, 24,  1,    1),
(5, 25,  2,    1),
(6, 26,  1.30, 1),
(7, 27,  6,    1),
(8, 28,  0.65, 1),
(9, 29,  1,    1),
(10,30,  0.95, 1),
(1, 31,  2,    1),
(2, 32,  1.40, 1),
(3, 33,  3,    1),
(4,  3,  2,    1),
(5,  4,  1.10, 1),
(6, 10,  1,    1),
(7, 11,  1.80, 1),
(8, 13,  6,    1),
(9, 17,  1.05, 1),
(10,19,  3,    1);

INSERT INTO `compra` (`usuarioId`, `data`, `formaPagamentoId`, `statusId`) VALUES
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1),
(FLOOR(RAND() * 10) + 1, DATE_ADD(CURDATE(), INTERVAL FLOOR(RAND() * 41) - 30 DAY), FLOOR(RAND() * 3) + 1, FLOOR(RAND() * 2) + 1);

-- COMPRA PRODUTO – idCompra 1-10
DELETE FROM compraProduto; -- opcional
INSERT INTO compraProduto (idCompra, idProduto, valor, quantidade, tipoQuantidadeId) VALUES
(FLOOR(RAND()*10)+1, 1,  ROUND(RAND()*200+10,2), 1.30, 1),
(FLOOR(RAND()*10)+1, 2,  ROUND(RAND()* 50+10,2), 2,    1),
(FLOOR(RAND()*10)+1, 4,  ROUND(RAND()*120+20,2), 0.85, 1),
(FLOOR(RAND()*10)+1, 5,  ROUND(RAND()*150+30,2), 1,    1),
(FLOOR(RAND()*10)+1, 6,  ROUND(RAND()*220+40,2), 1.10, 1),
(FLOOR(RAND()*10)+1, 7,  ROUND(RAND()* 15+ 4,2), 3,    1),
(FLOOR(RAND()*10)+1, 9,  ROUND(RAND()*190+50,2), 0.90, 1),
(FLOOR(RAND()*10)+1,12,  ROUND(RAND()* 20+ 5,2), 2,    1),
(FLOOR(RAND()*10)+1,13,  ROUND(RAND()* 12+ 4,2), 2,    1),
(FLOOR(RAND()*10)+1,14,  ROUND(RAND()*180+40,2), 1.00, 1),
(FLOOR(RAND()*10)+1,15,  ROUND(RAND()* 40+10,2), 2,    1),
(FLOOR(RAND()*10)+1,17,  ROUND(RAND()*120+30,2), 1.25, 1),
(FLOOR(RAND()*10)+1,18,  ROUND(RAND()* 12+ 4,2), 2,    1),
(FLOOR(RAND()*10)+1,19,  ROUND(RAND()* 22+ 7,2), 1,    1),
(FLOOR(RAND()*10)+1,20,  ROUND(RAND()* 25+ 8,2), 0.70, 1),
(FLOOR(RAND()*10)+1,21,  ROUND(RAND()*210+55,2), 1.15, 1),
(FLOOR(RAND()*10)+1,22,  ROUND(RAND()* 30+10,2), 0.80, 1),
(FLOOR(RAND()*10)+1,23,  ROUND(RAND()* 80+20,2), 1,    1),
(FLOOR(RAND()*10)+1,24,  ROUND(RAND()*100+30,2), 1,    1),
(FLOOR(RAND()*10)+1,25,  ROUND(RAND()* 50+15,2), 2,    1),
(FLOOR(RAND()*10)+1,26,  ROUND(RAND()*140+30,2), 1.60, 1),
(FLOOR(RAND()*10)+1,27,  ROUND(RAND()* 10+ 3,2), 6,    1),
(FLOOR(RAND()*10)+1,28,  ROUND(RAND()* 42+18,2), 0.60, 1),
(FLOOR(RAND()*10)+1,29,  ROUND(RAND()* 90+25,2), 1,    1),
(FLOOR(RAND()*10)+1,30,  ROUND(RAND()*190+45,2), 1.05, 1),
(FLOOR(RAND()*10)+1,31,  ROUND(RAND()* 15+ 5,2), 2,    1),
(FLOOR(RAND()*10)+1,32,  ROUND(RAND()*130+25,2), 1.40, 1),
(FLOOR(RAND()*10)+1,33,  ROUND(RAND()* 25+ 7,2), 1,    1),
(FLOOR(RAND()*10)+1, 3,  ROUND(RAND()* 30+ 8,2), 2,    1),
(FLOOR(RAND()*10)+1,11,  ROUND(RAND()*160+40,2), 1.20, 1);


Insert into Endereco
(idCliente,nomeEndereco,logradouroEndereco, numeroEndereco, CEPEndereco, complementoEndereco, cidadeEndereco, paisEndereco, UFEndereco)
VALUES
('2506','Coronel Manoel Teixeira', 'Rua', '91' , '47400970', 'Casa', 'Xique-Xique', 'Brasil', 'BA')

INSERT INTO Cliente
(nomeCompletoCliente, emailCliente,senhaCliente,CPFCliente,celularCliente)
VALUES
('Gustavo Souza Freitas', 'gustavo.freitas@gmail.com', '05002017', '12585137570', '61975873234')


SELECT * FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.idCliente = E.idCliente

SELECT *
FROM Endereco

SELECT *
FROM Cliente

-- ID CLIENTE 2506
-- ID ENDERECO 2585

SELECT *
FROM Pedido

SELECT *
FROM Produto

INSERT INTO Pedido
(idCliente, idStatus, dataPedido, idTipoPagto, idEndereco, idAplicacao)
VALUES
('2506', '156', )

INSERT INTO PRODUTO
(nomeProduto,descProduto,precProduto,precProduto,descontoPromocao,)
VALUES
()




UPDATE Produto
Set precProduto = 224.90
Where idProduto = '13'

INSERT INTO Produto
(nomeProduto,descProduto, precProduto,descontoPromocao,idCategoria, ativoProduto, idUsuario, qtdMinEstoque)
VALUES
('Camiseta Uber Blue Lock', 'MarcaGeneric ModeloGeneric IdadeAdultos Gênero: Unissex MarcaSona ModeloSona Gênero: Idade adulta unissex Tipo de roupa Formato de tamanho unitário É esportivo? Não são recomendados: Tipo de laser Tecido: poliéster Composto de poliéster Material principal: Microfibra Tipo de mangá: Curto Tipo de formato: redondo CalceRecto Form. É adequado para gravidez: Não', 78.16, 15.00, '3061', '1', '4054', 100)

SELECT *
FROM Estoque

INSERT INTO Estoque
(idProduto, qtdProdutoDisponivel)
VALUES
('2250', '1000')

-- ID CATEGORIA 3061
-- ID USUARIO 4054
-- ID PRODUTO 2250

INSERT INTO Usuario
(loginUsuario,senhaUsuario,nomeUsuario,tipoPerfil,usuarioAtivo)
VALUES
('MINECRAFT', 'EDUKOF', 'Gustavo Freitas', 'A', '2')


SELECT *
FROM Usuario

select *
From vw_fase5
ORDER BY DATAPEDIDO DESC


select *
from Categoria


SELECT *
FROM Aplicacao

SELECT *
FROM Pedido

INSERT INTO Pedido
(idCliente, idStatus, dataPedido, idTipoPagto, idEndereco, idAplicacao)
VALUES
('2506', '3', GETDATE() , '223', '2585', '2')

-- ID PEDIDO 1092
-- ID CLIENTE 2506
-- ID STATUS 3
-- IDTIPOPAGTO 223
-- ID ENDERECO 2585
-- ID APLICACAO 2

-- ID PRODUTO 2250
-- ID PRODUTO 18

INSERT INTO ItemPedido
(idProduto, idPedido, qtdProduto, precoVendaItem)
VALUES
(18, 1092, 1, 2990.00)

SELECT *
FROM ItemPedido


SELECT *
FROM StatusPedido

SELECT *
FROM TipoPagamento

SELECT *
FROM

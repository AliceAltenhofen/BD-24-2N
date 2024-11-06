ALTER TABLE cliente DROP COLUMN Email_Cliente; //apagando a coluna email_cliente da tabela cliente 
ALTER TABLE cliente ADD Email_Cliente varchar(255) NOT NULL; //adicionando coluna email a tabela cliente
ALTER TABLE  produto RENAME COLUMN Preco_Produto TO Money_Produto; //renomeando a coluna da tabea produto
ALTER TABLE Produto DROP COLUMN Qntd_Estoque_Produto;//removendo a coluna quantidade da tabela categoria
CREATE TABLE Categoria (ID_Categoria Int PRIMARY KEY); //criando tabela categoria
DROP TABLE Categoria; //apagando tabela categoria
TRUNCATE TABLE pedido; //limpar todos os registros dessa tabela
TRUNCATE TABLE cliente CASCADE; // limpar todos os registros dessa tabela
ALTER TABLE cliente ADD Sobrenome_Cliente varchar(255) NOT NULL;
INSERT INTO cliente (ID_Cliente, Nome_Cliente, Sobrenome_Cliente, Email_Cliente, Data_Nasc_Cliente, Rua_Cliente, Cidade_Cliente, Cep_Cliente, Estado_Cliente)
values 
	(1, 'João', 'Silveira', 'js@gmail.com', '2002-02-27', 'Independencia', 'São Leopoldo', '93042240', 'Rio Grande do Sul'),
	(2, 'Marcelo', 'Oliveira', 'mo@gmail.com', '2006-09-14', '3 de março', 'São Leopoldo', '93042245', 'São Paulo'),
	(3, 'Isadora', 'Vargas', 'iv@gmail.com', '1968-03-13', 'João Correa', 'São Leopoldo', '97043240', 'Rio de Janeiro')
select * from cliente


ALTER TABLE Produto ADD Qntd_Estoque_Produto Int NOT NULL;
insert into produto (ID_Produto, Nome_Produto, Descricao_Produto, Money_Produto, Qntd_Estoque_Produto)
values
	(1, 'Bola', 'Bola Volei', 15.00, 13),
	(2, 'Agua', 'Agua com gas', 3.00, 50)
	
select * from produto 


insert into produto (ID_Produto, Nome_Produto, Descricao_Produto, Money_Produto, Qntd_Estoque_Produto)
values
	(3, 'Salgadinho', 'Pringles', 11.00, 80),
	(4, 'Agua', 'Agua sem gas', 3.00, 20),
	(5, 'Refrigerante', 'Pepsi', 9.00, 120)
select * from produto

ALTER TABLE pedido ADD quantidade_pedido Int NOT NULL;



insert into pedido (Id_pedido, fk_produto_Id_Produto, fk_cliente_id_cliente, quantidade_pedido)
values
	(1, 2, 2, 3),
	(2, 1, 3, 3),
	(3, 1, 2, 3),
	(4, 3, 1, 10),
	(5, 4, 3, 6),
	(6, 5, 1, 1)

select * from pedido

update produto
set qntd_estoque_produto = 47
where id_produto = 2



select * from pedido

DELETE FROM pedido where id_pedido = 1
DELETE FROM pedido where id_pedido = 3

//Mostre todos os produtos em que o preço seja maior que 50. Exiba apenas as
//colunas nome_produto e preço, ordenando o resultado em ordem crescente de
//preco.

select nome_produto, money_produto from produto
where money_produto>50 order by money_produto ASC

//Mostre todos os usuários com idade entre 18 e 30 anos e também apenas as
//colunas nome e idade, e ao final da consulta, conte quantos usuários
//correspondem a esse critério.

select data_nasc_cliente, nome_cliente from cliente
where data_nasc_cliente<'2006-10-30' AND data_nasc_cliente>'1994-10-30'




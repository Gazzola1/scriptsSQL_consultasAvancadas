-- Trabalho feito por Nicolas Gazzola Ramos e Kauan Lopes Gomes --

-- QUESTÃO 1 --

-- ela está de ferias pois o dado retorna 1 bit e o bit = True --
select nome, de_ferias, bairro from tabela_de_vendedores where nome = 'Cláudia Morais' and bairro = 'Jardins';

-- QUESTÃO 2 --

-- o codigo puxa a percentual de comissão > 0.10 e = de ferias 1, já que 1 = true --
select percentual_comissao, de_ferias from tabela_de_vendedores where PERCENTUAL_COMISSAO > 0.10 and de_ferias = '1';

-- QUESTÃO 3 --

-- Como o CPF é unico e uma pessoa pode fazer diversas compras com o mesmo CPF e a chave Primaria não pode repitir--
select * from notas_fiscais where MATRICULA = '00237' or DATA_VENDA = '2015-01-12';

-- QUESTÃO 4 --

-- selecionei o produto com o preço > 44 e quantidade > 98 e puxando da tabela de produtos o codigo 1022450 --
select codigo_do_produto, quantidade from itens_notas_fiscais where PRECO > 44 and QUANTIDADE > 98;
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = '1022450';

-- QUESTÃO 5 --

-- A Vendedora foi a Cláudia Morais e o produto foi o Linha Refrescante - 1 Litro - Morango/Limão --
select * from notas_fiscais where numero = 102;
select * from tabela_de_clientes where cpf = 8502682733;
select * from tabela_de_vendedores where MATRICULA = 00236;
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = 1101035;
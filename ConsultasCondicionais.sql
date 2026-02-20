use sucos_vendas;
-- selecionar todos os dados de uma tabela --
select * from tabela_de_clientes;  


-- selecionar dados especificos--
select cpf, nome from tabela_de_clientes;

-- selecionar dado especifico com chave primaria --
select * from tabela_de_clientes where cpf = '1471156710';

 -- selecionar dado especifico sem chaves primarias --
 select * from tabela_de_clientes where nome = 'Petra Oliveira'; 

 -- selecionar dado espefico, porem foi decimal então o comando não funcionou corretamente --
 select * from tabela_de_produtos where preco_de_lista > 8.41;
 
 -- dado espefico entre outros dados --
 select * from tabela_de_produtos where preco_de_lista between 8.40 and 8.42;
 
 -- busca do dado do sabor manga ou do tamanho V=V=V V-F=V F-V=V F-F=F --
 select * from tabela_de_produtos where sabor ='manga' OR tamanho = '350 ml';
 
 -- busca do dado do sabor manga e o tamanho V=V=V V-F=F F-V=F F-F=F --
select * from tabela_de_produtos where sabor ='manga' AND tamanho = '350 ml';
  
  -- busca do dado sem aparecer o sabor manga e o tamanho --
select * from tabela_de_produtos where not (sabor ='manga' AND tamanho = '350 ml');
  
  -- busca do dado sem aparecer o sabor manga ou do tamanho --
select * from tabela_de_produtos where not (sabor ='manga' OR tamanho = '350 ml');
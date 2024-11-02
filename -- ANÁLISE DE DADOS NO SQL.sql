-- ANÁLISE DE DADOS NO SQL

-- FUNÇOES:
-- COUNT, SUM, AVG, MIN, MAX

select * from usuarios;

-- avg, min, max 

select count (telefone) from usuarios; 
 select * from pedidos;
  select sum (receita_vendas) from pedidos;
  
  select
  avg(precounitario),
  min (precounitario),
  max(precounitario)
  from oridutos; 
  
  select 
	escolaridade, 
    count(*)
from cliente
group by escolaridade
having count(*) >=25;

-- 2 coisas: join, group by 

select
	marca_deproduto, 
    sum(receit_venda)
from pedidos 
inner join produtos 
on pedidos. ID_Produtos = produtos.ID_Produto
group by produtos.Marca_Produto; 

-- SITUAÇÃO: SABER QUAIS SÃO OS PRODUTOS COM PREÇO ACIMA DA MEDIA 

select * from produtos;

-- Etapa 1: descobrie qual a media de preço 
			select avg (preco_unt) from produtos; 

-- GROUP BY 

select distinct marca_produto from produtos;

select 
  coluna_agrupada,
  calculo
from tabela
group by coluna_agrupada; 

select
	marca_produto,
    count(*)
from produtos
group by marca_produto
order by count(*) desc;

select * from clientes;

select
	Escolaridade, 
    count(*)
from clientes
where sexo = 'm'
group by Escolaridade;

select
	Escolaridade, 
    count(*)
from clientes
group by Escolaridade
having count(*) >= 25; 

select * from pedidos;
select * from clientes;
select * from produtos;
select * from categorias;

-- INNER JOIN 
-- Exemplo 1: Relacione as tabelas produtos e categorias

select * from produtos;
select * from categorias;

select
	produtos.nome_produto,
    produtos.id_categoria,
    produtos.marca_produto,
    categorias.categoria
from produtos 
inner join categorias 
on produtos.id_categoria = categorias.id_categoria; 

-- Exemplo 2: Relacionar as Tabelas de Produtos com Pedidos 

select * from produtos;
select * from pedidos;

select
	pedidos.data_venda,
    pedidos.id_produto,
    pedidos.qtd_vendida,
    produtos.nome_produto
from pedidos 
inner join produtos
on pedidos.id_produto = produto.id_produto;

-- Disafio: Total de Receita por Marca de Produto

select * from produtos;
select * from pedidos;

select
	produtos.marca_produto,
    sum(pedidos.receita_venda)
from pedido
inner join produtos
on pedido.id_produto = produtos.id_produto
group by produtos.marca_produto;
-- SUBQUERY
-- Situação: saber quais sao os produtos com preço acima da média 

select * from produtos; 
 
-- Filtrar a tabela de produtos com a média de preços 
select
	*
from produtos 
where preco_unt >= (select avg(preco_unit) from produtos); 

-- Resumo de Total de Receita por Marca 

select
	produtos.marca_produto,
    sum(pedidos.receita_venda)
from pedido
inner join produtos
on pedido.id_produto = produtos.id_produto
group by produtos.marca_produto;
    
	










    
    








 

 

    

 
  
			





















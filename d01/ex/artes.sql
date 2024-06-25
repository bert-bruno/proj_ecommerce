-- Quantos produtos temos na categoria 'artes'?

select  
        count(*) as qtde_linhas,
        count(product_id) as qtde_produtos,
        count(distinct t1.product_id) as qtde_produtos_distintos,
        count(distinct product_category_name) as qtde_categorias_distintas

from tb_products as t1

where t1.product_category_name = 'artes'
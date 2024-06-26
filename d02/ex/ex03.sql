-- Faça uma query que apresente o tamanho médio, máximo e 
-- mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100.

select
       t1.product_category_name,
       min(t1.product_name_lenght) as min_name_lenght,
       max(t1.product_name_lenght)as max_name_lenght,
       avg(t1.product_name_lenght) as avg_name_lenght

from tb_products as t1

where (t1.product_category_name is not null
        and t1.product_description_lenght > 100)

group by product_category_name
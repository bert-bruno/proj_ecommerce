-- Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo da descrição do objeto por categoria

select product_category_name,
       min(product_description_lenght) as min_lenght,
       max(product_description_lenght) as max_lenght,
       avg(product_description_lenght) as avg_lenght

from tb_products as t1

where t1.product_category_name is not null

group by t1.product_category_name
 

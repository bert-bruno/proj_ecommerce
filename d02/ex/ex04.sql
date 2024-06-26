-- Faça uma query que apresente o tamanho médio, 
-- máximo e mínimo do nome do objeto por categoria. 
-- Considere apenas os objetos que tenham a descrição maior que 100. 
-- Exiba apenas as categorias com tamanho médio de descrição do 
-- objeto maior que 500 caracteres.

select 
    product_category_name,
    min(product_name_lenght) as min_name_lenght,
    max(product_name_lenght) as max_name_lenght,
    avg(product_name_lenght) as avg_name_lenght
       
from 
    tb_products

where 
    product_description_lenght > 100

group by 
    product_category_name

having 
    avg(product_description_lenght) > 500


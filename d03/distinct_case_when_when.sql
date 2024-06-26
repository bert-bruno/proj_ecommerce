select 
    distinct case when product_category_name is null then 'outros'

                  when product_category_name = 'alimentos'
                        or product_category_name = 'alimentos_bebidas' then 'alimentos'

                  else product_category_name 
              end as categoria_fillna

from 
    tb_products

group by 
    product_category_name

order by 1

-- Quantos produtos de 'beleza_saude' com menos de 1 litro?

select count(*) as qtde_linhas

from tb_products as t1

where (t1.product_category_name = 'beleza_saude'
       and t1.product_height_cm * t1.product_length_cm * t1.product_width_cm < 1000)
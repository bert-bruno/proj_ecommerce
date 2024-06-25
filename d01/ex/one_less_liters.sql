-- Quantos produtos de 'beleza_saude' com menos de 1 litro?

select product_id,
       product_category_name,
       (t1.product_height_cm * t1.product_length_cm * t1.product_width_cm) as volume_cm3

from tb_products as t1

where (t1.product_category_name = 'beleza_saude'
       and volume_cm3 < 1000)

-- 132 produtos


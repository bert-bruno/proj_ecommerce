-- Quantos produtos tem mais de 5 litros?
select t1.product_id,
       (t1.product_length_cm * t1.product_height_cm * t1.product_width_cm) AS volume_cm3

from tb_products as t1

where (volume_cm3 > 5000)

-- 19407 produtos
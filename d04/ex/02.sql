/*
Qual o valor total de receita gerada por sellers de cada estado? 
Considere a base completa, com apenas pedidos entregues
*/

select 
       t2.seller_state,
       round(sum(t1.price), 2) as receita_gerada

from tb_order_items as t1

left join tb_sellers as t2
on t2.seller_id = t1.seller_id

left join tb_orders as t3
on t3.order_id = t1.order_id

where t3.order_status = 'delivered'

group by t2.seller_state

order by sum(t1.price) desc


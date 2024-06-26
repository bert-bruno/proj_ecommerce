/*
Qual o valor total de receita gerada por clientes de cada estado?
Considere a base completa, com apenas pedidos entregues
*/

select round(sum(t2.payment_value), 2) as receita_total, -- calcula receita total
       t3.customer_state -- mostra estrado

from tb_orders as t1

left join tb_order_payments as t2
on t2.order_id = t1.order_id

left join tb_customers as t3
on t3.customer_id = t1.customer_id

where t1.order_status = 'delivered' -- pedidos entregues

group by t3.customer_state -- agrupa por estado

order by sum(t2.payment_value) desc
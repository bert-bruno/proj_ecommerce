-- Qual o tempo médio entre vendas, em dias, para cada seller?
-- considere pedidos confirmados e entregues.

with tb_seller_order as (

    select t2.seller_id,
           t1.order_id,
           date(t1.order_approved_at) as data_venda

    from tb_orders as t1

    left join tb_order_items as t2
    on t1.order_id = t2.order_id

    where order_status = 'delivered'

),

tb_seller_order_sort as (
    
    select *,
           row_number() over (partition by seller_id, data_venda) as date_seller_order -- marca duplicatas
    
    from tb_seller_order

),

tb_seller_lag_data as (

select order_id,
       seller_id,
       data_venda,
       lag(data_venda, 1) over(partition by seller_id order by data_venda) as lag_data_venda

from tb_seller_order_sort
where date_seller_order = 1 -- remove duplicatas

),

tb_tempos_vendas_seller as (

    select *,
           julianday(data_venda) - julianday(lag_data_venda) as tempo_entre_vendas -- diferença em dias

    from tb_seller_lag_data

    where tempo_entre_vendas is not null

)

select seller_id,
       avg(tempo_entre_vendas) as media_tempo_entre_vendas

from tb_tempos_vendas_seller

group by seller_id
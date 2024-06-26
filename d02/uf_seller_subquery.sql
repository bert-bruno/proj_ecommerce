select *

from (

select seller_state,
       count(distinct seller_id) as qtde_vendedores
       
from tb_sellers

-- where seller_state IN ('SP', 'RJ', 'PR')

group by seller_state

    ) as t1

where t1.qtde_vendedores > 10
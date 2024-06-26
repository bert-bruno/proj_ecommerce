select seller_state,
       count(*) as qtde_sellers

from tb_sellers

group by seller_state

having count(*) > 10
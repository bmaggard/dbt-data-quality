select
    order_id,
    sum(amount) as total_amount
from {{ ref('orders' )}}
group by 1
having sum(amount) < 0 -- Lower than zero because we grab failing rows
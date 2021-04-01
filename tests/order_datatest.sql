select order_id, sum(amount) as total_amount
from {{ ref('payment' )}} group by 1
having not(total_amount <= 30)

select
    order_id,
    sum(amount) as payment_amt
from {{ ref('stg_payments') }}
group by 1
having not (payment_amt >=0)

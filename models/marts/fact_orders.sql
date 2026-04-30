select
    o.order_id,
    p.product_key,
    c.customer_key,
    ('2025-01-01'::date + (o.order_id - 1)) as date_key,
    o.quantity,
    (o.quantity * o.price)::numeric(10,2)    as total_amount
from {{ ref('stg_orders') }}   o
join {{ ref('dim_product') }}  p on o.product_name = p.product_name
join {{ ref('dim_customer') }} c on o.customer_id  = c.customer_key

select
    order_id,
    customer_id,
    product_name,
    product_category,
    quantity,
    price
from {{ ref('orders') }}

select
    customer_id,
    customer_name,
    customer_country
from {{ ref('customers') }}

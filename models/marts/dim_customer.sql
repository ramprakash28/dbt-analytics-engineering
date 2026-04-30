select
    customer_id      as customer_key,
    customer_name,
    customer_country as region,
    null::varchar    as city
from {{ ref('stg_customers') }}

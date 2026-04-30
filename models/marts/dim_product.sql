select
    row_number() over (order by product_name) as product_key,
    product_name,
    product_category                           as category,
    null::varchar                              as brand
from (
    select distinct product_name, product_category
    from {{ ref('stg_orders') }}
) products

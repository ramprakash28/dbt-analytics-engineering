select
    1 as customer_id,
    'Alice' as first_name,
    'Smith' as last_name,
    'alice@example.com' as email

union all

select
    2,
    'Bob',
    'Jones',
    'bob@example.com'

union all

select
    3,
    'Carol',
    'White',
    'carol@example.com'

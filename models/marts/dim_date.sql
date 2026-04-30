select
    date_day                           as date_key,
    extract(year  from date_day)::int  as year,
    extract(month from date_day)::int  as month,
    extract(day   from date_day)::int  as day,
    trim(to_char(date_day, 'Day'))     as weekday
from (
    select generate_series(
        '2025-01-01'::date,
        '2025-12-31'::date,
        '1 day'::interval
    )::date as date_day
) dates

SELECT
    id,
    date_format(created_at, 'yyyy-MM-dd') as date,
    name,
    email,
    city,
    state,
    zip,
    year(birth_date) as birth_year
from {{ ref('bronze_users')}}
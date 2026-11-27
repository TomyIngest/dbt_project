SELECT
    id,
    date_format(created_at, 'yyyy-MM-dd') as date,
    title, 
    category,
    ean
from {{ ref('bronze_products')}}
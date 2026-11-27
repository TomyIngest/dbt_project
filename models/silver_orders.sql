SELECT
    id,
    date_format(created_at, 'yyyy-MM-dd') as date,
    user_id, 
    product_id,
    quantity * unit_price as sales_amount
from {{ ref('bronze_orders')}}
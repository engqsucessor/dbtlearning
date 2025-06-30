{{ config(materialized='view') }}

select
    order_id,
    customer_id,
    order_date,
    quantity,
    price,
    quantity * price as total_amount,
    extract(year from order_date) as order_year,
    extract(month from order_date) as order_month
from {{ ref('demo_orders') }}

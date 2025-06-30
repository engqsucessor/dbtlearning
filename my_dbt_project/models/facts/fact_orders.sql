{{ config(materialized='table') }}

select
    row_number() over (order by order_id) as order_key,
    f.order_id,
    d.customer_key,
    f.order_date,
    f.quantity,
    f.price,
    f.total_amount
from {{ ref('stg_orders') }} f
join {{ ref('dim_customers') }} d on f.customer_id = d.customer_id

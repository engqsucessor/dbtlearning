{{ config(materialized='table') }}

select
    row_number() over (order by customer_id) as customer_key,
    customer_id,
    full_name,
    email_normalized,
    customer_type,
    current_timestamp as created_date
from {{ ref('stg_customers') }}

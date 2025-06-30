{{ config(materialized='view') }}

select
    customer_id,
    concat(first_name, ' ', last_name) as full_name,
    upper(email) as email_normalized,
    signup_date,
    case when signup_date >= '2024-01-01' then 'New Customer'
         else 'Existing Customer' end as customer_type
from {{ ref('demo_customers') }}

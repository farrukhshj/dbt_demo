{{ config(materialized='incremental', schema='app', unique_key='customer_id') }}

select customer_id, first_name, last_name, concat(first_name,last_name) as full_name, email, 
split(email,'@')[safe_offset(1)] as email_domain, country, created_at, updated_at, current_datetime() as dwi_date
from cli_dataset.customers 
{%if is_incremental()%}
where updated_at > (select max(updated_at) from {{this}})
{%endif%}
{{ config(materialized='table', schema='app') }}

select customer_id, first_name, last_name, concat(first_name,last_name) as full_name, email, split(email,'@')[safe_offset(1)] as email_domain, country, created_at, updated_at from cli_dataset.ext_customers 
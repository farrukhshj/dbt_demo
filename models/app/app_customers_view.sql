{{ config(materialized='view', schema='app', persist_docs={"relation":true, "columns":true}) }}

select customer_id, --unique indentifier for customer
email, --email id for the customers
 from {{ref('app_customers')}}
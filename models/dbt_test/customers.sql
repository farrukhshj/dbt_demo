{{ config(materialized='table', schema='dbt_test') }}

select * from cli_dataset.ext_customers
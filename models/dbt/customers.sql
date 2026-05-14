{{ config(materialized='table') }}

select * from cli_dataset.ext_customers
{{ config(materialized='table') }}

select * from cli_dataset.customers
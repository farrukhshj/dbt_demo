{{ config(materialized='table') }}

select * from {{source('cli_dataset', 'ext_customers')}}
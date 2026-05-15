{{ config(materialized='table', schema='dbt_test') }}

select * from {{ref('app_customersmers')}}
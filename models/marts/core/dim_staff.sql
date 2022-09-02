{{ config(materialized='table') }}

with Staff as (
    select *
    from {{ref('stg_staff')}}
)
select *
from Staff
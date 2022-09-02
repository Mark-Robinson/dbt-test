{{ config(materialized='table') }}

with ServiceUsers as (
    select *
    from {{ref('stg_service_users')}}
)
select *
from ServiceUsers
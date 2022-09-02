with ServiceUsers as (
    select * from {{ref('stg_service_users')}}
)
select distinct Gender
from ServiceUsers
where Gender NOT IN ('M', 'F')
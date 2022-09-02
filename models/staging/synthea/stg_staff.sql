with Staff as (
    select 
        split_part("Name", ' ', 1) as FirstName, 
        split_part("Name", ' ', 2) as LastName,
        "Id" as ExternalId
        from {{ source ('synthea', 'PROVIDERS')}}
)
select *
from Staff
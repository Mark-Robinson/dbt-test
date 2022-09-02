with Locations as (
    select
        "Name" as LocationName,
        "Id" as LocationExternalReferenceId,
        1 as InLocation,
        1 as OutLocation
    from {{ source ('synthea', 'ORGANIZATIONS')}}
)
select *
from Locations
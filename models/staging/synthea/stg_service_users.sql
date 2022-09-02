with ServiceUsers as (
    select
        "First" as FirstName,
        "Last" as LastName,
        "BirthDate" as DateOfBirth,
        "DeathDate" as DateOfDeath,
        SSN as Identifier,
        "Gender" as Gender,
        "Id" as ServiceUserExternalReferenceId
    from {{ source ('synthea', 'PATIENTS')}}
)
select *
from ServiceUsers
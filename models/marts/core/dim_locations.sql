{{
    config(
        materialized='incremental',
        unique_key='LocationExternalReferenceId',
        incremental_strategy='merge'
    )
}}

WITH 

using_clause AS (

    SELECT
        LocationName,
        LocationExternalReferenceId,
        InLocation,
        OutLocation
    
    FROM {{ref('stg_locations')}}
)

SELECT
    *
FROM using_clause

{% if is_incremental() %}

    WHERE LocationExternalReferenceId NOT IN (SELECT LocationExternalReferenceId FROM {{ this }})

{% endif %}





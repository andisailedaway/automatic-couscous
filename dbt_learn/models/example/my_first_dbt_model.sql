
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
    database='analytics_second_database'
    schema='terence_second_schema'
*/

{{ config(materialized='table', alias='first_model') }}

with source_data as (

    select 1 as id, 'CO' as state, '2020-01-03 00:00:00.000 -0800' as time
    union all
    select null as id, 'CO' as state, '2020-01-03 00:00:00.000 -0800' as time
    union all
    select 4 as id,  'CO' as state, '2020-01-03 00:00:00.000 -0800' as time

)

SELECT * 
from source_data
--where id is not null

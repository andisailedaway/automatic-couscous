select 
    sum(case when id is null then 1 else 0 end) / count(*) as total_nulls

from {{ ref('my_first_dbt_model') }}

having sum(case when id is null then 1 else 0 end) / count(*)  > .4

--tests in my test folder are for the data themselves
--tests in my schema.yml file are schema tests

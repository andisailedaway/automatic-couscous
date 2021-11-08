
-- Use the `ref` function to select from other models
{{ config(materialized='table', tags=['nightly','sample']) }}
select *
from {{ ref('my_first_dbt_model') }}
where id = 1
--union all
--select 3 as id -- This would fail dbt_test because of the sql generated.

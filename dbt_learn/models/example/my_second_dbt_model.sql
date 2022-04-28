

select *
from {{ ref('my_first_dbt_model') }}
-- where id = 1
-- union all
-- select 7 as id -- This would fail dbt_test because of the sql generated.

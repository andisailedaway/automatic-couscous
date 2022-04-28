select c_mktsegment
from {{ ref('playing_with_tests') }}
where c_mktsegment IN ('BUILDING', 'AUTOMOBILE', 'MACHINERY', 'HOUSEHOLD', 'FURNITURE')   
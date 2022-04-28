select c_custkey
from {{ ref('playing_with_tests') }}
where c_custkey is not null
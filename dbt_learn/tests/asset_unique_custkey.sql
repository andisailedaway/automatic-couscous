select count(c_custkey)/ count(distinct c_custkey)

from {{ ref('playing_with_tests') }}

having (count(c_custkey)/ count(distinct c_custkey)) = 1 



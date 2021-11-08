with customers as (
    select *
    from {{ source('sample','customer') }}
)

select C_CUSTOMER_SK, C_SALUTATION, {{ rename_segments('C_SALUTATION') }} as segment_adjusted, count(*) as counts
from customers
{{group_by(3)}}
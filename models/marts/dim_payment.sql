with payment as ( 
    select distinct payment_type
    from {{ref('int_union_tripdata')}} 
) 
select * 
,{{get_payment_name('payment_type')}} as payment_name
from payment
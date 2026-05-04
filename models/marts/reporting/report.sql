{{ config(
    materialized='incremental',
    unique_key='trip_id',
    contract={'enforced': true}
) }}

select fct.* , pay.payment_name
from {{ref('fct_tripdata')}} fct 
left join {{ref('dim_payment')}} pay on pay.payment_type = fct.payment_type
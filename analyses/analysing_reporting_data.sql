select  case 
            when tip_amount >=  tolls_amount + mta_tax then 'Generous'
            when tip_amount < tolls_amount + mta_tax then 'Normal'
        end as Customer_type , * 
from {{ref('report')}}

 
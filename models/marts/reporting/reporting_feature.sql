{% set table_name = select_table(ref('report'),ref('reporting_data_feature')) %}

select  
  {{get_customer_type('tip_amount','tolls_amount','mta_tax') }} as customer_type,
    *
from {{ table_name }}
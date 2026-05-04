{% macro get_customer_type(tip_amount,tolls_amount,mta_tax) %}


case 
    when {{tip_amount}} >= {{tolls_amount}} + {{mta_tax}} then 'Generous'
    else 'Normal'
end 


{% endmacro %}
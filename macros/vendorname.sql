{% macro get_vendor_names(vendorid) %}
    case 
        when {{vendorid}} = 1 then 'Creative Mobile Technologies, LLC'
        when {{vendorid}} = 2 then 'Verifone Inc.'
        when {{vendorid}} = 3 then 'Three'
        when {{vendorid}} = 4 then 'Unknown Vendoe'
        
         end
{% endmacro %}
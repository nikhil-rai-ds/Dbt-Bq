{% test is_not_zero(model ,column_name) %}

    with validation_data as 
    (
        select distinct  {{column_name}}  
        from  {{model }}
    ),
      validation_errors as (
        select * 
        from validation_data 
        where {{column_name}} <=  0 
    ) 

  select * from validation_errors

{% endtest %}
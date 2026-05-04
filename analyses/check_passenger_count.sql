select * from  {{ref('fct_tripdata')}} 
where passenger_count = 0 
select * 
from {{ref('fct_tripdata')}} f 
where f.pickup_datetime > f.dropoff_datetime 
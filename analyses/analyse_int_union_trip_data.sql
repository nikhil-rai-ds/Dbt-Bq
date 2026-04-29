with unique_trips as (
    select * from {{ref('int_union_tripdata')}} 
    limit 100
)

select vendor_id,rate_code_id,pickup_location_id,dropoff_location_id,
         pickup_datetime,dropoff_datetime,passenger_count,trip_type,payment_type ,taxi_type 
         ,sum(fare_amount) as fare_amount, sum(extra) as extra, sum(mta_tax) mta_tax,sum(tip_amount) tip_amount
         ,sum(tolls_amount) tolls_amount,sum(improvement_surcharge) improvement_surcharge
         ,sum(total_amount)total_amount
         ,sum(congestion_surcharge)congestion_surcharge
from  unique_trips 
group by  vendor_id,rate_code_id,pickup_location_id,dropoff_location_id,pickup_datetime,dropoff_datetime ,passenger_count,
trip_type,payment_type,taxi_type 


-- select * from  {{ref('int_union_tripdata')}}
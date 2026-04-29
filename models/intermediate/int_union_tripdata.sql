with green as (
    select * from {{ref('stg_green_tripdata')}}
),
yellow as (
    select * from {{ref('stg_yellow_tripdata')}}
)

select * , "Green" as taxi_type
from green 
union  all
select * , "Yellow" as taxi_type
from yellow
 
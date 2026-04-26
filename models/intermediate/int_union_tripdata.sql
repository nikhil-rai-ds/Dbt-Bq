with green as (
    select * from zoomcamp.stg_green_tripdata
),
yellow as (
    select * from zoomcamp.stg_yellow_tripdata
)

select *
from green
union all
select *
from yellow;
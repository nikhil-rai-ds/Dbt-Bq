select customer_type,
    trip_id,
    vendor_id,
    rate_code_id,
    pickup_location_id,
    dropoff_location_id,
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_type,
    payment_type,
    taxi_type,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    ehail_fee,
    payment_name
from {{ ref('reporting_data_feature_expected') }}
where trip_id = 'db56b0061476b3c75a5875f5df532309'

union all

select 
    customer_type,
    trip_id,
    vendor_id,
    rate_code_id,
    pickup_location_id,
    dropoff_location_id,
    pickup_datetime,
    dropoff_datetime,
    passenger_count,
    trip_type,
    payment_type,
    taxi_type,
    fare_amount,
    extra,
    mta_tax,
    tip_amount,
    tolls_amount,
    improvement_surcharge,
    total_amount,
    ehail_fee,
    payment_name
from {{ ref('reporting_feature') }}
where trip_id = 'db56b0061476b3c75a5875f5df532309'
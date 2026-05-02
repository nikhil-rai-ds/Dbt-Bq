with vendor as (select distinct vendor_id from {{ ref("int_union_tripdata") }})

select vendor_id,{{ get_vendor_names("vendor_id") }} vendor_name
from vendor

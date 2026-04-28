select  cast(locationid as int) as location_id , 
        borough as Borough, 
        zone as Zone, 
        service_zone as Service_Zone

from {{ref('tax_zone_lookup')}}
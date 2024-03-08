with customer as (

    select *
    from {{ ref('stg_tpch__customer') }}

), location as (

    select *
    from {{ ref('starburst_hub', 'int_tpch_location') }}

), joined as (

    select 
        customer.*,
        location.nation_name,
        location.region_name
    from customer
    inner join location
        on customer.nation_key = location.nation_key

)

select *
from joined

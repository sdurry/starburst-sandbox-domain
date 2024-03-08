with 

source as (

    select * from {{ source('tpch', 'customer') }}

),

renamed as (

    select
        custkey as customer_id,
        -- name as customer_name,
        address,
        nationkey as nation_key,
        -- phone,
        acctbal as account_balance,
        mktsegment as marketing_segment
        -- comment

    from source

)

select * from renamed

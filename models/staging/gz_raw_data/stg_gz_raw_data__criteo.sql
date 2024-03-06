with 

source as (

    select * from {{ source('gz_raw_data', 'criteo') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key as campaing_name ,
        campgn_name,
        cast(ads_cost as float64) as ads_cost,
        impression,
        click

    from source

)

select * from renamed

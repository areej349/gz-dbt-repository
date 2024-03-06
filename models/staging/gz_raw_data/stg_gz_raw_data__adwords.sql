with 

source as (

    select * from {{ source('gz_raw_data', 'adwords') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key as campaing_name,
        campgn_name,
        ads_cost,
        impression,
        click

    from source

)

select * from renamed
with 

source as (

    select * from {{ source('gz_raw_data', 'int_campaigns') }}

),

renamed as (

    select

    from source

)

select * from renamed

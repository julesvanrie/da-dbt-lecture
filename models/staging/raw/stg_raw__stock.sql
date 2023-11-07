with 

source as (

    select * from {{ source('raw', 'stock') }}

),

renamed as (

    select
        concat(model, '_', color, '_', size) as product_id,
        model,
        model_name,
        color as colour,
        color_name as colour_name,
        size,
        `new`,
        forecast_stock,
        stock,
        price as sales_price

    from source

)

select * from renamed

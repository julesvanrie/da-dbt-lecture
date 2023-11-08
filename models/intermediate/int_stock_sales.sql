select
    product_id
    ,date_date
    ,quantity
    ,forecast_stock
    ,stock
    ,sales_price
    ,quantity * sales_price as turnover

from
    {{ ref('stg_raw__sales') }}
join
    {{ ref('stg_raw__stock') }}
using
    (product_id)
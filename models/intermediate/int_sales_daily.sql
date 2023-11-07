select
    date_date
    ,sum(turnover) as turnover
    ,avg(turnover) as avg_basket
    ,sum(quantity) as items_count
    ,count(*) as product_id_unique

from
    {{ ref('int_stock_sales')}}

group by
    date_date

order by
    date_date desc
select
    date_date
    ,sum(turnover) as turnover

from
    {{ ref('int_stock_sales')}}

group by
    date_date

order by
    date_date desc
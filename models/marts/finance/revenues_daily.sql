select
    date_date
    ,sum(turnover) as turnover

from
    {{ ref("int_sales_daily")}}
    -- `dbt_jules`.`int_sales_daily` # in dev
    -- `dbt_prod`.`int_sales_daily` # in prod
    

group by
    date_date

order by
    date_date desc
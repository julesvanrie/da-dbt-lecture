{% test no_color(model, column_name, color) %}

{{ config(store_failures=true) }}

select
    *
from
    {{ model }}
where 
    {{ column_name }} like "%{{color}}%"
{% endtest %}
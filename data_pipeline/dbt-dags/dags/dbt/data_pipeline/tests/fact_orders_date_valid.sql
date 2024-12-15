select * from {{ref('fact_orders')}}
where date(OrderDate) > CURRENT_DATE()
    or date(OrderDate) < date('1990-01-01')

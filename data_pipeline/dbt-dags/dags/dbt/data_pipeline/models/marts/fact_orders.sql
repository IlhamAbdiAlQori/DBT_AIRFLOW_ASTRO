select
    o.*,
    oits.GrossItemSalesAmt,
    oits.ItemDiscountAmt
from {{ref('stg_tpch_orders')}} as o
join {{ref('int_order_items_summary')}} as oits on o.OrderKey = oits.OrderKey
order by OrderDate

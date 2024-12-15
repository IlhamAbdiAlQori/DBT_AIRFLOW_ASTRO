select
    li.OrderItemKey,
    li.PartKey,
    li.LineNumber,
    li.ExtendedPrice,
    o.OrderKey,
    o.CustomerKey,
    o.OrderDate,
    {{ DiscountAmt('li.ExtendedPrice', 'li.DiscountPct') }} as ItemDiscountAmt
from {{ ref('stg_tpch_orders') }} as o
join {{ ref('stg_tpch_line_items') }} as li on o.OrderKey = li.OrderKey
order by o.OrderDate

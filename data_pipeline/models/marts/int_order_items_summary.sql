select 
    OrderKey,
    sum(ExtendedPrice) as GrossItemSalesAmt,
    sum(ItemDiscountAmt) as ItemDiscountAmt
from {{ ref('int_order_items') }}
group by OrderKey

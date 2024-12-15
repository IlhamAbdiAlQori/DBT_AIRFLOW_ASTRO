select * from {{ref('fact_orders')}}
where ItemDiscountAmt > 0
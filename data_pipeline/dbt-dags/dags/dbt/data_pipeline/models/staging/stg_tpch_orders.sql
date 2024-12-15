select
    o_orderkey as OrderKey,
    o_custkey as CustomerKey,
    o_orderstatus as StatusCode,
    o_totalprice as TotalPrice,
    o_orderdate as OrderDate
from {{ source('tpch', 'orders') }}

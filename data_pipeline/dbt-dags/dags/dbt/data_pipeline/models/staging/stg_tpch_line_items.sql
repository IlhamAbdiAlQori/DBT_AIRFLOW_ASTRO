select
    {{
        dbt_utils.generate_surrogate_key([
            'l_orderkey',
            'l_linenumber'
        ])
    }} as OrderItemKey,
	l_orderkey as OrderKey,
	l_partkey as PartKey,
	l_linenumber as LineNumber,
	l_quantity as Qty,
	l_extendedprice as ExtendedPrice,
	l_discount as DiscountPct,
	l_tax as TaxRate
from {{ source('tpch', 'lineitem') }}
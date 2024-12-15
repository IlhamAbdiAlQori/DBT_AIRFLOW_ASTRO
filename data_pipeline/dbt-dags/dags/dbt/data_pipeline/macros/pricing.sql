{% macro DiscountAmt(ExtendedPrice, DiscountPct, scale=2) %}
    (-1 * {{ExtendedPrice}} * {{DiscountPct}})::decimal(16, {{ scale }})
{% endmacro %}
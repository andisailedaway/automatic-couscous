

select o.o_orderdate,
        sum(o.o_totalprice) as cumulative_sales
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.ORDERS o
group by o.o_orderdate

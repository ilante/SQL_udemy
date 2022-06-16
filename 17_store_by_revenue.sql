-- BB: What store has historically brought the most revenue?
SELECT
    s.store, s.total_sales
FROM
    sales_by_store s
ORDER BY
    2 desc
;

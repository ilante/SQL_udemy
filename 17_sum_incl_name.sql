-- include name in big spender list
SELECT
  p.customer_id,
  c.last_name,
  c.first_name,
  sum(p.amount) as "total spending"
FROM
  payment p, customer c
WHERE
  p.customer_id = c.customer_id
GROUP BY
  p.customer_id
ORDER BY
  4 desc
;

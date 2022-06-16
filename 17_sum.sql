SELECT
  p.customer_id,
  sum(p.amount)
FROM
  payment p
GROUP BY
  p.customer_id
ORDER BY
  sum(p.amount) desc
;

/*

*/

SELECT
  customer.customer_id,
  customer.email,
  COUNT(payment.payment_id) AS payments_count,
  CAST(SUM(payment.amount) AS float) AS total_amount
FROM customer
JOIN payment
  ON customer.customer_id = payment.customer_id
GROUP BY customer.customer_id
ORDER BY total_amount DESC
LIMIT 10;
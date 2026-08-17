SELECT
  1569 AS total_visitors,
  385 AS product_viewers,
  120 AS cart_users,
  54 AS checkout_users,
  34 AS purchasers,

  ROUND(385 / 1569 * 100, 2) AS visitor_to_product_pct,
  ROUND(120 / 385 * 100, 2) AS product_to_cart_pct,
  ROUND(54 / 120 * 100, 2) AS cart_to_checkout_pct,
  ROUND(34 / 54 * 100, 2) AS checkout_to_purchase_pct,
  ROUND(34 / 1569 * 100, 2) AS overall_conversion_pct;

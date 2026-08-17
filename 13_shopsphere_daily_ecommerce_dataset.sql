WITH daily_data AS (

  SELECT
    _TABLE_SUFFIX AS date,

    COUNT(DISTINCT fullVisitorId) AS visitors,

    COUNT(DISTINCT CASE
      WHEN EXISTS (
        SELECT 1
        FROM UNNEST(hits) h
        WHERE h.eCommerceAction.action_type = '2'
      )
      THEN fullVisitorId
    END) AS product_viewers,

    COUNT(DISTINCT CASE
      WHEN EXISTS (
        SELECT 1
        FROM UNNEST(hits) h
        WHERE h.eCommerceAction.action_type = '3'
      )
      THEN fullVisitorId
    END) AS cart_users,

    COUNT(DISTINCT CASE
      WHEN EXISTS (
        SELECT 1
        FROM UNNEST(hits) h
        WHERE h.eCommerceAction.action_type = '5'
      )
      THEN fullVisitorId
    END) AS checkout_users,

    COUNT(DISTINCT CASE
      WHEN EXISTS (
        SELECT 1
        FROM UNNEST(hits) h
        WHERE h.eCommerceAction.action_type = '6'
      )
      THEN fullVisitorId
    END) AS purchasers

  FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`

  GROUP BY date
),

daily_funnel AS (

  SELECT
    date,
    visitors,
    product_viewers,
    cart_users,
    checkout_users,
    purchasers,

    ROUND(SAFE_DIVIDE(product_viewers, visitors) * 100, 2)
      AS visitor_to_product_pct,

    ROUND(SAFE_DIVIDE(cart_users, product_viewers) * 100, 2)
      AS product_to_cart_pct,

    ROUND(SAFE_DIVIDE(checkout_users, cart_users) * 100, 2)
      AS cart_to_checkout_pct,

    ROUND(SAFE_DIVIDE(purchasers, checkout_users) * 100, 2)
      AS checkout_to_purchase_pct,

    ROUND(SAFE_DIVIDE(purchasers, visitors) * 100, 2)
      AS overall_conversion_pct

  FROM daily_data
)

SELECT *
FROM daily_funnel
ORDER BY date;

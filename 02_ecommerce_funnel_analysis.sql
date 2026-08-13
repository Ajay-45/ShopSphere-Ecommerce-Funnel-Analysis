SELECT
  COUNT(DISTINCT fullVisitorId) AS total_visitors,

  COUNT(DISTINCT IF(
    EXISTS(
      SELECT 1
      FROM UNNEST(hits) h
      WHERE h.eCommerceAction.action_type = '2'
    ), fullVisitorId, NULL
  )) AS product_viewers,

  COUNT(DISTINCT IF(
    EXISTS(
      SELECT 1
      FROM UNNEST(hits) h
      WHERE h.eCommerceAction.action_type = '3'
    ), fullVisitorId, NULL
  )) AS cart_users,

  COUNT(DISTINCT IF(
    EXISTS(
      SELECT 1
      FROM UNNEST(hits) h
      WHERE h.eCommerceAction.action_type = '5'
    ), fullVisitorId, NULL
  )) AS checkout_users,

  COUNT(DISTINCT IF(
    EXISTS(
      SELECT 1
      FROM UNNEST(hits) h
      WHERE h.eCommerceAction.action_type = '6'
    ), fullVisitorId, NULL
  )) AS purchasers

FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801;
SELECT
  hit.page.pagePath AS landing_page,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  COUNTIF(totals.transactions > 0) AS purchasing_sessions,
  SUM(totals.transactions) AS total_transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS total_revenue,
  SAFE_DIVIDE(
    COUNTIF(totals.transactions > 0),
    COUNT(*)
  ) * 100 AS conversion_rate
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801,
UNNEST(hits) AS hit
WHERE hit.isEntrance = TRUE
GROUP BY landing_page
ORDER BY total_revenue DESC;
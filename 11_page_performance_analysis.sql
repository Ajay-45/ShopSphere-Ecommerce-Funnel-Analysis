SELECT
  hit.page.pagePath AS page_path,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  COUNTIF(totals.transactions > 0) AS purchasing_sessions,
  SUM(totals.transactions) AS total_transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS total_revenue
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801,
UNNEST(hits) AS hit
WHERE hit.type = 'PAGE'
GROUP BY page_path
ORDER BY total_revenue DESC;

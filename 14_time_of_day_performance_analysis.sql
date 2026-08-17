SELECT
  EXTRACT(HOUR FROM TIMESTAMP_SECONDS(visitStartTime)) AS visit_hour,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  SUM(totals.transactions) AS total_transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS total_revenue
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801
GROUP BY visit_hour
ORDER BY total_revenue DESC;

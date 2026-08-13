SELECT
  device.deviceCategory,
  COUNT(DISTINCT fullVisitorId)AS
unique_visitors,
SUM(totals.transactions)AS
  total_transactions,
SUM(totals.pageviews)AS
  total_pageviews
FROM`bigquery-public-data.google_analytics_sample.ga_sessions_20160801`
GROUP BY device.deviceCategory
ORDER BY unique_visitors DESC;
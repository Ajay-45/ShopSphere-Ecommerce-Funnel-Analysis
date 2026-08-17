SELECT
  trafficSource.source AS traffic_source,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  AVG(totals.pageviews) AS avg_pageviews,
  AVG(totals.timeOnSite) AS avg_time_on_site,
  SUM(totals.transactions) AS total_transactions,
  SUM(totals.totalTransactionRevenue) / 1000000 AS total_revenue
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801
GROUP BY traffic_source
ORDER BY total_revenue DESC;

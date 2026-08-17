SELECT
  EXTRACT(HOUR FROM TIMESTAMP_SECONDS(visitStartTime)) AS visit_hour,
  COUNT(DISTINCT fullVisitorId) AS unique_visitors,
  COUNTIF(totals.transactions > 0) AS purchasing_sessions,
  SUM(totals.transactions) AS total_transactions,
  SAFE_DIVIDE(
    COUNTIF(totals.transactions > 0),
    COUNT(DISTINCT fullVisitorId)
  ) * 100 AS conversion_rate
FROM bigquery-public-data.google_analytics_sample.ga_sessions_20160801
GROUP BY visit_hour
ORDER BY conversion_rate DESC;

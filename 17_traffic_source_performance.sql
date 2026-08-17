SELECT
  trafficSource.source AS
traffic_source,
  COUNT(DISTINCT fullvisitorId) AS
unique_visitors,
  SUM(totals.transactions)AS
total_transactions,
  SUM(totals.pageviews)AS
total_pageviews
from`bigquery-public-data.google_analytics_sample.ga_sessions_20160801`
GROUP BY traffic_source
ORDER BY unique_visitors DESC;
